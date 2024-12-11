// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

enum LoginType implements _i1.PrismaEnum {
  email._('EMAIL'),
  google._('GOOGLE'),
  facebook._('FACEBOOK');

  const LoginType._(this.name);

  @override
  final String name;
}

class Tag {
  const Tag({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.$count,
  });

  factory Tag.fromJson(Map json) => Tag(
        id: json['id'],
        tagName: json['tagName'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        places: (json['places'] as Iterable?)
            ?.map((json) => _i2.Place.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.TagCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.Place>? places;

  final _i3.TagCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'places': places?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Place {
  const Place({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.trip,
    this.tags,
    this.$count,
  });

  factory Place.fromJson(Map json) => Place(
        id: json['id'],
        placeName: json['placeName'],
        description: json['description'],
        notes: json['notes'],
        startDate: switch (json['startDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['startDate']
        },
        endDate: switch (json['endDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['endDate']
        },
        tripId: json['tripId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        trip: json['trip'] is Map ? _i2.Trip.fromJson(json['trip']) : null,
        tags:
            (json['tags'] as Iterable?)?.map((json) => _i2.Tag.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.PlaceCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? placeName;

  final String? description;

  final String? notes;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.Trip? trip;

  final Iterable<_i2.Tag>? tags;

  final _i3.PlaceCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'tripId': tripId,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'trip': trip?.toJson(),
        'tags': tags?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

enum Role implements _i1.PrismaEnum {
  owner._('OWNER'),
  collaborator._('COLLABORATOR'),
  viewer._('VIEWER');

  const Role._(this.name);

  @override
  final String name;
}

class UsersOnTrips {
  const UsersOnTrips({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.trip,
  });

  factory UsersOnTrips.fromJson(Map json) => UsersOnTrips(
        id: json['id'],
        userId: json['userId'],
        tripId: json['tripId'],
        role: json['role'] != null
            ? _i2.Role.values.firstWhere((e) => e.name == json['role'])
            : null,
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
        trip: json['trip'] is Map ? _i2.Trip.fromJson(json['trip']) : null,
      );

  final String? id;

  final String? userId;

  final String? tripId;

  final _i2.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.User? user;

  final _i2.Trip? trip;

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role?.name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'user': user?.toJson(),
        'trip': trip?.toJson(),
      };
}

class Trip {
  const Trip({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
    this.places,
    this.users,
    this.usersOnTrips,
    this.$count,
  });

  factory Trip.fromJson(Map json) => Trip(
        id: json['id'],
        tripName: json['tripName'],
        description: json['description'],
        startDate: switch (json['startDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['startDate']
        },
        endDate: switch (json['endDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['endDate']
        },
        imageUrl: json['imageUrl'],
        notes: json['notes'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        isShared: json['isShared'],
        places: (json['places'] as Iterable?)
            ?.map((json) => _i2.Place.fromJson(json)),
        users: (json['users'] as Iterable?)
            ?.map((json) => _i2.User.fromJson(json)),
        usersOnTrips: (json['UsersOnTrips'] as Iterable?)
            ?.map((json) => _i2.UsersOnTrips.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.TripCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? tripName;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? imageUrl;

  final String? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  final Iterable<_i2.Place>? places;

  final Iterable<_i2.User>? users;

  final Iterable<_i2.UsersOnTrips>? usersOnTrips;

  final _i3.TripCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'isShared': isShared,
        'places': places?.map((e) => e.toJson()),
        'users': users?.map((e) => e.toJson()),
        'UsersOnTrips': usersOnTrips?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class User {
  const User({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
    this.trips,
    this.usersOnTrips,
    this.$count,
  });

  factory User.fromJson(Map json) => User(
        id: json['id'],
        firebaseUid: json['firebaseUid'],
        email: json['email'],
        username: json['username'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        password: json['password'],
        loginType: json['loginType'] != null
            ? _i2.LoginType.values
                .firstWhere((e) => e.name == json['loginType'])
            : null,
        providerId: json['providerId'],
        profilePictureUrl: json['profilePictureUrl'],
        bio: json['bio'],
        trips: (json['trips'] as Iterable?)
            ?.map((json) => _i2.Trip.fromJson(json)),
        usersOnTrips: (json['UsersOnTrips'] as Iterable?)
            ?.map((json) => _i2.UsersOnTrips.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.UserCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? firebaseUid;

  final String? email;

  final String? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? password;

  final _i2.LoginType? loginType;

  final String? providerId;

  final String? profilePictureUrl;

  final String? bio;

  final Iterable<_i2.Trip>? trips;

  final Iterable<_i2.UsersOnTrips>? usersOnTrips;

  final _i3.UserCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'password': password,
        'loginType': loginType?.name,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
        'trips': trips?.map((e) => e.toJson()),
        'UsersOnTrips': usersOnTrips?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class CreateManyUserAndReturnOutputType {
  const CreateManyUserAndReturnOutputType({
    this.id,
    this.firebaseUid,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.profilePictureUrl,
    this.bio,
  });

  factory CreateManyUserAndReturnOutputType.fromJson(Map json) =>
      CreateManyUserAndReturnOutputType(
        id: json['id'],
        firebaseUid: json['firebaseUid'],
        email: json['email'],
        username: json['username'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        password: json['password'],
        loginType: json['loginType'] != null
            ? _i2.LoginType.values
                .firstWhere((e) => e.name == json['loginType'])
            : null,
        providerId: json['providerId'],
        profilePictureUrl: json['profilePictureUrl'],
        bio: json['bio'],
      );

  final String? id;

  final String? firebaseUid;

  final String? email;

  final String? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? password;

  final _i2.LoginType? loginType;

  final String? providerId;

  final String? profilePictureUrl;

  final String? bio;

  Map<String, dynamic> toJson() => {
        'id': id,
        'firebaseUid': firebaseUid,
        'email': email,
        'username': username,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'password': password,
        'loginType': loginType?.name,
        'providerId': providerId,
        'profilePictureUrl': profilePictureUrl,
        'bio': bio,
      };
}

class CreateManyTripAndReturnOutputType {
  const CreateManyTripAndReturnOutputType({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.notes,
    this.createdAt,
    this.updatedAt,
    this.isShared,
  });

  factory CreateManyTripAndReturnOutputType.fromJson(Map json) =>
      CreateManyTripAndReturnOutputType(
        id: json['id'],
        tripName: json['tripName'],
        description: json['description'],
        startDate: switch (json['startDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['startDate']
        },
        endDate: switch (json['endDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['endDate']
        },
        imageUrl: json['imageUrl'],
        notes: json['notes'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        isShared: json['isShared'],
      );

  final String? id;

  final String? tripName;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? imageUrl;

  final String? notes;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final bool? isShared;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'imageUrl': imageUrl,
        'notes': notes,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'isShared': isShared,
      };
}

class CreateManyUsersOnTripsAndReturnOutputType {
  const CreateManyUsersOnTripsAndReturnOutputType({
    this.id,
    this.userId,
    this.tripId,
    this.role,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.trip,
  });

  factory CreateManyUsersOnTripsAndReturnOutputType.fromJson(Map json) =>
      CreateManyUsersOnTripsAndReturnOutputType(
        id: json['id'],
        userId: json['userId'],
        tripId: json['tripId'],
        role: json['role'] != null
            ? _i2.Role.values.firstWhere((e) => e.name == json['role'])
            : null,
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        user: json['user'] is Map ? _i2.User.fromJson(json['user']) : null,
        trip: json['trip'] is Map ? _i2.Trip.fromJson(json['trip']) : null,
      );

  final String? id;

  final String? userId;

  final String? tripId;

  final _i2.Role? role;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.User? user;

  final _i2.Trip? trip;

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'tripId': tripId,
        'role': role?.name,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'user': user?.toJson(),
        'trip': trip?.toJson(),
      };
}

class CreateManyPlaceAndReturnOutputType {
  const CreateManyPlaceAndReturnOutputType({
    this.id,
    this.placeName,
    this.description,
    this.notes,
    this.startDate,
    this.endDate,
    this.tripId,
    this.createdAt,
    this.updatedAt,
    this.trip,
  });

  factory CreateManyPlaceAndReturnOutputType.fromJson(Map json) =>
      CreateManyPlaceAndReturnOutputType(
        id: json['id'],
        placeName: json['placeName'],
        description: json['description'],
        notes: json['notes'],
        startDate: switch (json['startDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['startDate']
        },
        endDate: switch (json['endDate']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['endDate']
        },
        tripId: json['tripId'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
        trip: json['trip'] is Map ? _i2.Trip.fromJson(json['trip']) : null,
      );

  final String? id;

  final String? placeName;

  final String? description;

  final String? notes;

  final DateTime? startDate;

  final DateTime? endDate;

  final String? tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.Trip? trip;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'notes': notes,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'tripId': tripId,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'trip': trip?.toJson(),
      };
}

class CreateManyTagAndReturnOutputType {
  const CreateManyTagAndReturnOutputType({
    this.id,
    this.tagName,
    this.createdAt,
    this.updatedAt,
  });

  factory CreateManyTagAndReturnOutputType.fromJson(Map json) =>
      CreateManyTagAndReturnOutputType(
        id: json['id'],
        tagName: json['tagName'],
        createdAt: switch (json['createdAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['createdAt']
        },
        updatedAt: switch (json['updatedAt']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['updatedAt']
        },
      );

  final String? id;

  final String? tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tagName': tagName,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}
