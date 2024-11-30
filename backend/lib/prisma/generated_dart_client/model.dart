// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'model.dart' as _i1;
import 'prisma.dart' as _i2;

class Users {
  const Users({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.places,
    this.trips,
    this.$count,
  });

  factory Users.fromJson(Map json) => Users(
        userId: json['user_id'],
        username: json['username'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        places: (json['places'] as Iterable?)
            ?.map((json) => _i1.Places.fromJson(json)),
        trips: (json['trips'] as Iterable?)
            ?.map((json) => _i1.Trips.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.UsersCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? userId;

  final String? username;

  final String? email;

  final String? firstName;

  final String? lastName;

  final Iterable<_i1.Places>? places;

  final Iterable<_i1.Trips>? trips;

  final _i2.UsersCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'places': places?.map((e) => e.toJson()),
        'trips': trips?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Trips {
  const Trips({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
    this.$count,
  });

  factory Trips.fromJson(Map json) => Trips(
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startDate: switch (json['start_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['start_date']
        },
        endDate: switch (json['end_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['end_date']
        },
        createdAt: switch (json['created_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['created_at']
        },
        updatedAt: switch (json['updated_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updated_at']
        },
        places: (json['places'] as Iterable?)
            ?.map((json) => _i1.Places.fromJson(json)),
        users: json['users'] is Map ? _i1.Users.fromJson(json['users']) : null,
        $count: json['_count'] is Map
            ? _i2.TripsCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? tripId;

  final int? userId;

  final String? title;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i1.Places>? places;

  final _i1.Users? users;

  final _i2.TripsCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate?.toIso8601String(),
        'end_date': endDate?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'places': places?.map((e) => e.toJson()),
        'users': users?.toJson(),
        '_count': $count?.toJson(),
      };
}

class Places {
  const Places({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.placeTags,
    this.trips,
    this.users,
    this.$count,
  });

  factory Places.fromJson(Map json) => Places(
        placeId: json['place_id'],
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startTime: switch (json['start_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['start_time']
        },
        endTime: switch (json['end_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['end_time']
        },
        placeTags: (json['place_tags'] as Iterable?)
            ?.map((json) => _i1.PlaceTags.fromJson(json)),
        trips: json['trips'] is Map ? _i1.Trips.fromJson(json['trips']) : null,
        users: json['users'] is Map ? _i1.Users.fromJson(json['users']) : null,
        $count: json['_count'] is Map
            ? _i2.PlacesCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? placeId;

  final int? tripId;

  final int? userId;

  final String? title;

  final String? description;

  final DateTime? startTime;

  final DateTime? endTime;

  final Iterable<_i1.PlaceTags>? placeTags;

  final _i1.Trips? trips;

  final _i1.Users? users;

  final _i2.PlacesCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime?.toIso8601String(),
        'end_time': endTime?.toIso8601String(),
        'place_tags': placeTags?.map((e) => e.toJson()),
        'trips': trips?.toJson(),
        'users': users?.toJson(),
        '_count': $count?.toJson(),
      };
}

class Tags {
  const Tags({
    this.tagId,
    this.tagName,
    this.description,
    this.placeTags,
    this.$count,
  });

  factory Tags.fromJson(Map json) => Tags(
        tagId: json['tag_id'],
        tagName: json['tag_name'],
        description: json['description'],
        placeTags: (json['place_tags'] as Iterable?)
            ?.map((json) => _i1.PlaceTags.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.TagsCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? tagId;

  final String? tagName;

  final String? description;

  final Iterable<_i1.PlaceTags>? placeTags;

  final _i2.TagsCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
        'place_tags': placeTags?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class PlaceTags {
  const PlaceTags({
    this.placeId,
    this.tagId,
    this.places,
    this.tags,
  });

  factory PlaceTags.fromJson(Map json) => PlaceTags(
        placeId: json['place_id'],
        tagId: json['tag_id'],
        places:
            json['places'] is Map ? _i1.Places.fromJson(json['places']) : null,
        tags: json['tags'] is Map ? _i1.Tags.fromJson(json['tags']) : null,
      );

  final int? placeId;

  final int? tagId;

  final _i1.Places? places;

  final _i1.Tags? tags;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
        'places': places?.toJson(),
        'tags': tags?.toJson(),
      };
}

class CreateManyplaceTagsAndReturnOutputType {
  const CreateManyplaceTagsAndReturnOutputType({
    this.placeId,
    this.tagId,
    this.places,
    this.tags,
  });

  factory CreateManyplaceTagsAndReturnOutputType.fromJson(Map json) =>
      CreateManyplaceTagsAndReturnOutputType(
        placeId: json['place_id'],
        tagId: json['tag_id'],
        places:
            json['places'] is Map ? _i1.Places.fromJson(json['places']) : null,
        tags: json['tags'] is Map ? _i1.Tags.fromJson(json['tags']) : null,
      );

  final int? placeId;

  final int? tagId;

  final _i1.Places? places;

  final _i1.Tags? tags;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'tag_id': tagId,
        'places': places?.toJson(),
        'tags': tags?.toJson(),
      };
}

class CreateManyplacesAndReturnOutputType {
  const CreateManyplacesAndReturnOutputType({
    this.placeId,
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startTime,
    this.endTime,
    this.trips,
    this.users,
  });

  factory CreateManyplacesAndReturnOutputType.fromJson(Map json) =>
      CreateManyplacesAndReturnOutputType(
        placeId: json['place_id'],
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startTime: switch (json['start_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['start_time']
        },
        endTime: switch (json['end_time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['end_time']
        },
        trips: json['trips'] is Map ? _i1.Trips.fromJson(json['trips']) : null,
        users: json['users'] is Map ? _i1.Users.fromJson(json['users']) : null,
      );

  final int? placeId;

  final int? tripId;

  final int? userId;

  final String? title;

  final String? description;

  final DateTime? startTime;

  final DateTime? endTime;

  final _i1.Trips? trips;

  final _i1.Users? users;

  Map<String, dynamic> toJson() => {
        'place_id': placeId,
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_time': startTime?.toIso8601String(),
        'end_time': endTime?.toIso8601String(),
        'trips': trips?.toJson(),
        'users': users?.toJson(),
      };
}

class CreateManytagsAndReturnOutputType {
  const CreateManytagsAndReturnOutputType({
    this.tagId,
    this.tagName,
    this.description,
  });

  factory CreateManytagsAndReturnOutputType.fromJson(Map json) =>
      CreateManytagsAndReturnOutputType(
        tagId: json['tag_id'],
        tagName: json['tag_name'],
        description: json['description'],
      );

  final int? tagId;

  final String? tagName;

  final String? description;

  Map<String, dynamic> toJson() => {
        'tag_id': tagId,
        'tag_name': tagName,
        'description': description,
      };
}

class CreateManytripsAndReturnOutputType {
  const CreateManytripsAndReturnOutputType({
    this.tripId,
    this.userId,
    this.title,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.users,
  });

  factory CreateManytripsAndReturnOutputType.fromJson(Map json) =>
      CreateManytripsAndReturnOutputType(
        tripId: json['trip_id'],
        userId: json['user_id'],
        title: json['title'],
        description: json['description'],
        startDate: switch (json['start_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['start_date']
        },
        endDate: switch (json['end_date']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['end_date']
        },
        createdAt: switch (json['created_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['created_at']
        },
        updatedAt: switch (json['updated_at']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updated_at']
        },
        users: json['users'] is Map ? _i1.Users.fromJson(json['users']) : null,
      );

  final int? tripId;

  final int? userId;

  final String? title;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i1.Users? users;

  Map<String, dynamic> toJson() => {
        'trip_id': tripId,
        'user_id': userId,
        'title': title,
        'description': description,
        'start_date': startDate?.toIso8601String(),
        'end_date': endDate?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'users': users?.toJson(),
      };
}

class CreateManyusersAndReturnOutputType {
  const CreateManyusersAndReturnOutputType({
    this.userId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
  });

  factory CreateManyusersAndReturnOutputType.fromJson(Map json) =>
      CreateManyusersAndReturnOutputType(
        userId: json['user_id'],
        username: json['username'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
      );

  final int? userId;

  final String? username;

  final String? email;

  final String? firstName;

  final String? lastName;

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'username': username,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
      };
}
