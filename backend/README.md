A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

# How to set up server

1. Get the packages by running

```bash
dart pub get
npm install
```

2. Run `dart run bin/server.dart`
3. Server is served on http://localhost:8080

# How to access database locally

1. Download google cloud sql proxy
2. In your terminal, find the location of the script and run `./cloud-sql-proxy exploreo-14779:us-central1:exploreo-postgresql-instance`
3. Create a .env and add the DATABASE_URL
4. Run the dart server and you should be able to query the database

# How to update database schema

1. Change the models in the schema.prisma folder under lib/prisma
2. npx prisma db push --schema lib/prisma/schema.prisma
3. move prisma-query-engine to the backend root directory

# API endpoints

## Users

1. GET /users

2. GET /users/:userId
   Get user details by uuid

3. POST /users 
   Required fields in body

    ```
    [
        'firebaseUid',
        'email',
        'providerId',
        'loginType': enum("EMAIL", "GOOGLE", or "FACEBOOK")
        'password': only required if loginType is "EMAIL"
    ]
    ```

    Optional fields in body

    ```
    [
        'profilePictureUrl',
        'bio',
    ]
    ```

4. PUT /users/:userId  

    Optional fields in body:

    ```
    [
        'firebaseUid',
        'email',
        'username',
        'password',
        'providerId',
        'loginType',
        'profilePictureUrl',
        'bio',
    ]
    ```

5. DELETE /users/:userId

6. GET /users/:userId/trips  
   Gets all trips that the user is included in

## Trips

1. GET /trips

2. GET /trips/:tripId  
   Get trip details by uuid

3. POST /trips  
   Required fields in body

    ```
    [
        'userId',
        'tripName',
        'startDate': DateTime in iso8601 format
        'endDate': DateTime in iso8601 format
    ]
    ```

    Optional fields in body

    ```
    [
        'description'
        'isShared'
        'imageUrl'
        'notes'
    ]
    ```

4. PUT /trips/:tripId  

    Update trip profile

    Optional fields in body:

    ```
    [
        'tripName',
        'description',
        'startDate',
        'endDate',
        'isShared'
        'imageUrl'
        'notes'
    ]
    ```

5. DELETE /trips/:tripId

6. GET /rips/:tripId/places
   Gets all places added to the trip

## Place

1. GET /places

2. GET /places/:placeId  
   Get place details by uuid

3. POST /places  
   Required fields in body

    ```
    [
        'placeName',
        'tripId'
    ]
    ```

    Optional fields in body

    ```
    [
        'endDate': DateTime in iso8601 format
        'startDate': DateTime in iso8601 format
        'notes
    ]
    ```

4. PUT /places/:placeId  
    Optional fields in body:

    ```
    [
        'placeName'
        'description'
        'endDate': DateTime in iso8601 format
        'startDate': DateTime in iso8601 format
        'notes'
    ]
    ```

5. DELETE /places/:placeId

## Tags

1. GET /tags

2. GET /tags/:tagId
   Get tag details by uuid

3. POST /tags  
   Required fields in body

    ```
    [
        'tagName'
    ]
    ```

4. PUT /tags/:tagId  
    Optional fields in body:

    ```
    [
        'tagName'
    ]
    ```

5. DELETE /tags/:userId
