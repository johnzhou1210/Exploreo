FROM dart:stable AS build

# Install Node.js to work with Prisma
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs

# Set the working directory of the container
WORKDIR /app

# Copy pubspec files and get dependencies
COPY ./pubspec.* ./
RUN dart pub get

# Copy the project source code into the working directory
COPY . ./

# Request DATABASE_URL and FIREBASE_API_KEY as build-time environment variables
ARG DATABASE_URL
ARG FIREBASE_API_KEY

# Install Prisma CLI and generate Prisma-related files
RUN npm install prisma
RUN npx prisma generate --schema lib/prisma/schema.prisma

# Move the Prisma query engine binary to the root directory
RUN mv /app/lib/prisma/prisma-query-engine /app/prisma-query-engine

# Compile the Dart Shelf server executable
RUN dart compile exe bin/server.dart -o bin/server

# Configure runtime for Prisma
RUN FILES="libz.so libgcc_s.so libssl.so libcrypto.so"; \
    for file in $FILES; do \
    so="$(find / -name "${file}*" -print -quit)"; \
    dir="$(dirname "$so")"; \
    mkdir -p "/runtime${dir}"; \
    cp "$so" "/runtime$so"; \
    echo "Copied $so to /runtime${so}"; \
    done

FROM scratch

# Copy runtime from the previous build phase
COPY --from=build /runtime/ /

# Copy the server executable from the build phase
COPY --from=build /app/bin/server /app/bin/

# Copy the Prisma query engine binary
COPY --from=build /app/prisma-query-engine /app/bin/

# Set the working directory to where the server executable is located
WORKDIR /app/bin/

# Set environment variables
ENV DATABASE_URL=""
ENV FIREBASE_API_KEY=""
ENV PORT=8080

# Expose the application port
EXPOSE 8080

# Run the Dart Shelf server executable
CMD ["/app/bin/server"]
