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
            ?.map((json) => _i2.TagsOnPlaces.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.TagCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? tagName;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.TagsOnPlaces>? places;

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

class TagsOnPlaces {
  const TagsOnPlaces({
    this.placeId,
    this.tagId,
    this.place,
    this.tag,
  });

  factory TagsOnPlaces.fromJson(Map json) => TagsOnPlaces(
        placeId: json['placeId'],
        tagId: json['tagId'],
        place: json['place'] is Map ? _i2.Place.fromJson(json['place']) : null,
        tag: json['tag'] is Map ? _i2.Tag.fromJson(json['tag']) : null,
      );

  final int? placeId;

  final int? tagId;

  final _i2.Place? place;

  final _i2.Tag? tag;

  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
        'place': place?.toJson(),
        'tag': tag?.toJson(),
      };
}

class Place {
  const Place({
    this.id,
    this.placeName,
    this.description,
    this.note,
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
        note: json['note'],
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
        tags: (json['tags'] as Iterable?)
            ?.map((json) => _i2.TagsOnPlaces.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.PlaceCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? placeName;

  final String? description;

  final String? note;

  final int? tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.Trip? trip;

  final Iterable<_i2.TagsOnPlaces>? tags;

  final _i3.PlaceCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
        'tripId': tripId,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'trip': trip?.toJson(),
        'tags': tags?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class Trip {
  const Trip({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
    this.places,
    this.users,
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
        users: (json['users'] as Iterable?)
            ?.map((json) => _i2.User.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.TripCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? tripName;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final Iterable<_i2.Place>? places;

  final Iterable<_i2.User>? users;

  final _i3.TripCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'places': places?.map((e) => e.toJson()),
        'users': users?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class User {
  const User({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
    this.trips,
    this.$count,
  });

  factory User.fromJson(Map json) => User(
        id: json['id'],
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
        trips: (json['trips'] as Iterable?)
            ?.map((json) => _i2.Trip.fromJson(json)),
        $count: json['_count'] is Map
            ? _i3.UserCountOutputType.fromJson(json['_count'])
            : null,
      );

  final int? id;

  final String? email;

  final String? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? password;

  final _i2.LoginType? loginType;

  final String? providerId;

  final Iterable<_i2.Trip>? trips;

  final _i3.UserCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'password': password,
        'loginType': loginType?.name,
        'providerId': providerId,
        'trips': trips?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}

class CreateManyUserAndReturnOutputType {
  const CreateManyUserAndReturnOutputType({
    this.id,
    this.email,
    this.username,
    this.createdAt,
    this.updatedAt,
    this.password,
    this.loginType,
    this.providerId,
  });

  factory CreateManyUserAndReturnOutputType.fromJson(Map json) =>
      CreateManyUserAndReturnOutputType(
        id: json['id'],
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
      );

  final int? id;

  final String? email;

  final String? username;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final String? password;

  final _i2.LoginType? loginType;

  final String? providerId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'username': username,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'password': password,
        'loginType': loginType?.name,
        'providerId': providerId,
      };
}

class CreateManyTripAndReturnOutputType {
  const CreateManyTripAndReturnOutputType({
    this.id,
    this.tripName,
    this.description,
    this.startDate,
    this.endDate,
    this.createdAt,
    this.updatedAt,
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

  final int? id;

  final String? tripName;

  final String? description;

  final DateTime? startDate;

  final DateTime? endDate;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => {
        'id': id,
        'tripName': tripName,
        'description': description,
        'startDate': startDate?.toIso8601String(),
        'endDate': endDate?.toIso8601String(),
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
      };
}

class CreateManyPlaceAndReturnOutputType {
  const CreateManyPlaceAndReturnOutputType({
    this.id,
    this.placeName,
    this.description,
    this.note,
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
        note: json['note'],
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

  final int? id;

  final String? placeName;

  final String? description;

  final String? note;

  final int? tripId;

  final DateTime? createdAt;

  final DateTime? updatedAt;

  final _i2.Trip? trip;

  Map<String, dynamic> toJson() => {
        'id': id,
        'placeName': placeName,
        'description': description,
        'note': note,
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

  final int? id;

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

class CreateManyTagsOnPlacesAndReturnOutputType {
  const CreateManyTagsOnPlacesAndReturnOutputType({
    this.placeId,
    this.tagId,
    this.place,
    this.tag,
  });

  factory CreateManyTagsOnPlacesAndReturnOutputType.fromJson(Map json) =>
      CreateManyTagsOnPlacesAndReturnOutputType(
        placeId: json['placeId'],
        tagId: json['tagId'],
        place: json['place'] is Map ? _i2.Place.fromJson(json['place']) : null,
        tag: json['tag'] is Map ? _i2.Tag.fromJson(json['tag']) : null,
      );

  final int? placeId;

  final int? tagId;

  final _i2.Place? place;

  final _i2.Tag? tag;

  Map<String, dynamic> toJson() => {
        'placeId': placeId,
        'tagId': tagId,
        'place': place?.toJson(),
        'tag': tag?.toJson(),
      };
}
