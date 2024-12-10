A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

# How to set up server
1. Get the packages by running
```bash
dart put get
npm install
```
2. Run ```dart run bin/backend.dart```
3. Server is served on http://localhost:8080

# How to access database locally
1. Download google cloud sql proxy
2. In your terminal, find the location of the script and run ```./cloud-sql-proxy exploreo-14779:us-central1:exploreo-postgresql-instance```
3. Create a .env and add the DATABASE_URL
4. Run the dart server and you should be able to query the database

# How to update database schema

1. Change the models in the schema.prisma folder under lib/prisma
2. npx prisma db push --schema lib/prisma/schema.prisma
3. move prisma-query-engine to the backend root directory