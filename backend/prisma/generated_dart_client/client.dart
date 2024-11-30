// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class PlaceTagsDelegate {
  const PlaceTagsDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.PlaceTags?> findUnique({
    required _i3.PlaceTagsWhereUniqueInput where,
    _i3.PlaceTagsSelect? select,
    _i3.PlaceTagsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PlaceTags?>(
      action: 'findUniqueplace_tags',
      result: result,
      factory: (e) => e != null ? _i2.PlaceTags.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PlaceTags> findUniqueOrThrow({
    required _i3.PlaceTagsWhereUniqueInput where,
    _i3.PlaceTagsSelect? select,
    _i3.PlaceTagsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PlaceTags>(
      action: 'findUniqueplace_tagsOrThrow',
      result: result,
      factory: (e) => _i2.PlaceTags.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PlaceTags?> findFirst({
    _i3.PlaceTagsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlaceTagsOrderByWithRelationInput>,
            _i3.PlaceTagsOrderByWithRelationInput>?
        orderBy,
    _i3.PlaceTagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlaceTagsScalar, Iterable<_i3.PlaceTagsScalar>>?
        distinct,
    _i3.PlaceTagsSelect? select,
    _i3.PlaceTagsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PlaceTags?>(
      action: 'findFirstplace_tags',
      result: result,
      factory: (e) => e != null ? _i2.PlaceTags.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PlaceTags> findFirstOrThrow({
    _i3.PlaceTagsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlaceTagsOrderByWithRelationInput>,
            _i3.PlaceTagsOrderByWithRelationInput>?
        orderBy,
    _i3.PlaceTagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlaceTagsScalar, Iterable<_i3.PlaceTagsScalar>>?
        distinct,
    _i3.PlaceTagsSelect? select,
    _i3.PlaceTagsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PlaceTags>(
      action: 'findFirstplace_tagsOrThrow',
      result: result,
      factory: (e) => _i2.PlaceTags.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.PlaceTags>> findMany({
    _i3.PlaceTagsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlaceTagsOrderByWithRelationInput>,
            _i3.PlaceTagsOrderByWithRelationInput>?
        orderBy,
    _i3.PlaceTagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlaceTagsScalar, Iterable<_i3.PlaceTagsScalar>>?
        distinct,
    _i3.PlaceTagsSelect? select,
    _i3.PlaceTagsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.PlaceTags>>(
      action: 'findManyplace_tags',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.PlaceTags.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.PlaceTags> create({
    required _i1.PrismaUnion<_i3.PlaceTagsCreateInput,
            _i3.PlaceTagsUncheckedCreateInput>
        data,
    _i3.PlaceTagsSelect? select,
    _i3.PlaceTagsInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PlaceTags>(
      action: 'createOneplace_tags',
      result: result,
      factory: (e) => _i2.PlaceTags.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PlaceTagsCreateManyInput,
            Iterable<_i3.PlaceTagsCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyplace_tags',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyplaceTagsAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.PlaceTagsCreateManyInput,
            Iterable<_i3.PlaceTagsCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyplaceTagsAndReturnOutputTypeSelect? select,
    _i3.CreateManyplaceTagsAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyplaceTagsAndReturnOutputType>>(
      action: 'createManyplace_tagsAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyplaceTagsAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.PlaceTags?> update({
    required _i1.PrismaUnion<_i3.PlaceTagsUpdateInput,
            _i3.PlaceTagsUncheckedUpdateInput>
        data,
    required _i3.PlaceTagsWhereUniqueInput where,
    _i3.PlaceTagsSelect? select,
    _i3.PlaceTagsInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PlaceTags?>(
      action: 'updateOneplace_tags',
      result: result,
      factory: (e) => e != null ? _i2.PlaceTags.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PlaceTagsUpdateManyMutationInput,
            _i3.PlaceTagsUncheckedUpdateManyInput>
        data,
    _i3.PlaceTagsWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyplace_tags',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PlaceTags> upsert({
    required _i3.PlaceTagsWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.PlaceTagsCreateInput,
            _i3.PlaceTagsUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.PlaceTagsUpdateInput,
            _i3.PlaceTagsUncheckedUpdateInput>
        update,
    _i3.PlaceTagsSelect? select,
    _i3.PlaceTagsInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PlaceTags>(
      action: 'upsertOneplace_tags',
      result: result,
      factory: (e) => _i2.PlaceTags.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PlaceTags?> delete({
    required _i3.PlaceTagsWhereUniqueInput where,
    _i3.PlaceTagsSelect? select,
    _i3.PlaceTagsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PlaceTags?>(
      action: 'deleteOneplace_tags',
      result: result,
      factory: (e) => e != null ? _i2.PlaceTags.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PlaceTagsWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyplace_tags',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PlaceTagsGroupByOutputType>> groupBy({
    _i3.PlaceTagsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlaceTagsOrderByWithAggregationInput>,
            _i3.PlaceTagsOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PlaceTagsScalar>, _i3.PlaceTagsScalar>
        by,
    _i3.PlaceTagsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PlaceTagsGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PlaceTagsGroupByOutputType>>(
      action: 'groupByplace_tags',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PlaceTagsGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePlaceTags> aggregate({
    _i3.PlaceTagsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlaceTagsOrderByWithRelationInput>,
            _i3.PlaceTagsOrderByWithRelationInput>?
        orderBy,
    _i3.PlaceTagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePlaceTagsSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'place_tags',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePlaceTags>(
      action: 'aggregateplace_tags',
      result: result,
      factory: (e) => _i3.AggregatePlaceTags.fromJson(e),
    );
  }
}

class PlacesDelegate {
  const PlacesDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Places?> findUnique({
    required _i3.PlacesWhereUniqueInput where,
    _i3.PlacesSelect? select,
    _i3.PlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Places?>(
      action: 'findUniqueplaces',
      result: result,
      factory: (e) => e != null ? _i2.Places.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Places> findUniqueOrThrow({
    required _i3.PlacesWhereUniqueInput where,
    _i3.PlacesSelect? select,
    _i3.PlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Places>(
      action: 'findUniqueplacesOrThrow',
      result: result,
      factory: (e) => _i2.Places.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Places?> findFirst({
    _i3.PlacesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlacesOrderByWithRelationInput>,
            _i3.PlacesOrderByWithRelationInput>?
        orderBy,
    _i3.PlacesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlacesScalar, Iterable<_i3.PlacesScalar>>? distinct,
    _i3.PlacesSelect? select,
    _i3.PlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Places?>(
      action: 'findFirstplaces',
      result: result,
      factory: (e) => e != null ? _i2.Places.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Places> findFirstOrThrow({
    _i3.PlacesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlacesOrderByWithRelationInput>,
            _i3.PlacesOrderByWithRelationInput>?
        orderBy,
    _i3.PlacesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlacesScalar, Iterable<_i3.PlacesScalar>>? distinct,
    _i3.PlacesSelect? select,
    _i3.PlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Places>(
      action: 'findFirstplacesOrThrow',
      result: result,
      factory: (e) => _i2.Places.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Places>> findMany({
    _i3.PlacesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlacesOrderByWithRelationInput>,
            _i3.PlacesOrderByWithRelationInput>?
        orderBy,
    _i3.PlacesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PlacesScalar, Iterable<_i3.PlacesScalar>>? distinct,
    _i3.PlacesSelect? select,
    _i3.PlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Places>>(
      action: 'findManyplaces',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Places.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Places> create({
    required _i1
        .PrismaUnion<_i3.PlacesCreateInput, _i3.PlacesUncheckedCreateInput>
        data,
    _i3.PlacesSelect? select,
    _i3.PlacesInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Places>(
      action: 'createOneplaces',
      result: result,
      factory: (e) => _i2.Places.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PlacesCreateManyInput,
            Iterable<_i3.PlacesCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyplaces',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyplacesAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.PlacesCreateManyInput,
            Iterable<_i3.PlacesCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyplacesAndReturnOutputTypeSelect? select,
    _i3.CreateManyplacesAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyplacesAndReturnOutputType>>(
      action: 'createManyplacesAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyplacesAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Places?> update({
    required _i1
        .PrismaUnion<_i3.PlacesUpdateInput, _i3.PlacesUncheckedUpdateInput>
        data,
    required _i3.PlacesWhereUniqueInput where,
    _i3.PlacesSelect? select,
    _i3.PlacesInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Places?>(
      action: 'updateOneplaces',
      result: result,
      factory: (e) => e != null ? _i2.Places.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PlacesUpdateManyMutationInput,
            _i3.PlacesUncheckedUpdateManyInput>
        data,
    _i3.PlacesWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyplaces',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Places> upsert({
    required _i3.PlacesWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.PlacesCreateInput, _i3.PlacesUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.PlacesUpdateInput, _i3.PlacesUncheckedUpdateInput>
        update,
    _i3.PlacesSelect? select,
    _i3.PlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Places>(
      action: 'upsertOneplaces',
      result: result,
      factory: (e) => _i2.Places.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Places?> delete({
    required _i3.PlacesWhereUniqueInput where,
    _i3.PlacesSelect? select,
    _i3.PlacesInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Places?>(
      action: 'deleteOneplaces',
      result: result,
      factory: (e) => e != null ? _i2.Places.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PlacesWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyplaces',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PlacesGroupByOutputType>> groupBy({
    _i3.PlacesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlacesOrderByWithAggregationInput>,
            _i3.PlacesOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PlacesScalar>, _i3.PlacesScalar> by,
    _i3.PlacesScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PlacesGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PlacesGroupByOutputType>>(
      action: 'groupByplaces',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PlacesGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePlaces> aggregate({
    _i3.PlacesWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PlacesOrderByWithRelationInput>,
            _i3.PlacesOrderByWithRelationInput>?
        orderBy,
    _i3.PlacesWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePlacesSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'places',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePlaces>(
      action: 'aggregateplaces',
      result: result,
      factory: (e) => _i3.AggregatePlaces.fromJson(e),
    );
  }
}

class TagsDelegate {
  const TagsDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Tags?> findUnique({
    required _i3.TagsWhereUniqueInput where,
    _i3.TagsSelect? select,
    _i3.TagsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tags?>(
      action: 'findUniquetags',
      result: result,
      factory: (e) => e != null ? _i2.Tags.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Tags> findUniqueOrThrow({
    required _i3.TagsWhereUniqueInput where,
    _i3.TagsSelect? select,
    _i3.TagsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tags>(
      action: 'findUniquetagsOrThrow',
      result: result,
      factory: (e) => _i2.Tags.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tags?> findFirst({
    _i3.TagsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagsOrderByWithRelationInput>,
            _i3.TagsOrderByWithRelationInput>?
        orderBy,
    _i3.TagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagsScalar, Iterable<_i3.TagsScalar>>? distinct,
    _i3.TagsSelect? select,
    _i3.TagsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tags?>(
      action: 'findFirsttags',
      result: result,
      factory: (e) => e != null ? _i2.Tags.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Tags> findFirstOrThrow({
    _i3.TagsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagsOrderByWithRelationInput>,
            _i3.TagsOrderByWithRelationInput>?
        orderBy,
    _i3.TagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagsScalar, Iterable<_i3.TagsScalar>>? distinct,
    _i3.TagsSelect? select,
    _i3.TagsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tags>(
      action: 'findFirsttagsOrThrow',
      result: result,
      factory: (e) => _i2.Tags.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Tags>> findMany({
    _i3.TagsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagsOrderByWithRelationInput>,
            _i3.TagsOrderByWithRelationInput>?
        orderBy,
    _i3.TagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagsScalar, Iterable<_i3.TagsScalar>>? distinct,
    _i3.TagsSelect? select,
    _i3.TagsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Tags>>(
      action: 'findManytags',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Tags.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Tags> create({
    required _i1.PrismaUnion<_i3.TagsCreateInput, _i3.TagsUncheckedCreateInput>
        data,
    _i3.TagsSelect? select,
    _i3.TagsInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tags>(
      action: 'createOnetags',
      result: result,
      factory: (e) => _i2.Tags.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1
        .PrismaUnion<_i3.TagsCreateManyInput, Iterable<_i3.TagsCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManytags',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManytagsAndReturnOutputType>>
      createManyAndReturn({
    required _i1
        .PrismaUnion<_i3.TagsCreateManyInput, Iterable<_i3.TagsCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManytagsAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManytagsAndReturnOutputType>>(
      action: 'createManytagsAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManytagsAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Tags?> update({
    required _i1.PrismaUnion<_i3.TagsUpdateInput, _i3.TagsUncheckedUpdateInput>
        data,
    required _i3.TagsWhereUniqueInput where,
    _i3.TagsSelect? select,
    _i3.TagsInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tags?>(
      action: 'updateOnetags',
      result: result,
      factory: (e) => e != null ? _i2.Tags.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.TagsUpdateManyMutationInput,
            _i3.TagsUncheckedUpdateManyInput>
        data,
    _i3.TagsWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManytags',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tags> upsert({
    required _i3.TagsWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.TagsCreateInput, _i3.TagsUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.TagsUpdateInput, _i3.TagsUncheckedUpdateInput>
        update,
    _i3.TagsSelect? select,
    _i3.TagsInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tags>(
      action: 'upsertOnetags',
      result: result,
      factory: (e) => _i2.Tags.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tags?> delete({
    required _i3.TagsWhereUniqueInput where,
    _i3.TagsSelect? select,
    _i3.TagsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tags?>(
      action: 'deleteOnetags',
      result: result,
      factory: (e) => e != null ? _i2.Tags.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.TagsWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManytags',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.TagsGroupByOutputType>> groupBy({
    _i3.TagsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagsOrderByWithAggregationInput>,
            _i3.TagsOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.TagsScalar>, _i3.TagsScalar> by,
    _i3.TagsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.TagsGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.TagsGroupByOutputType>>(
      action: 'groupBytags',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.TagsGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateTags> aggregate({
    _i3.TagsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TagsOrderByWithRelationInput>,
            _i3.TagsOrderByWithRelationInput>?
        orderBy,
    _i3.TagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateTagsSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'tags',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateTags>(
      action: 'aggregatetags',
      result: result,
      factory: (e) => _i3.AggregateTags.fromJson(e),
    );
  }
}

class TripsDelegate {
  const TripsDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Trips?> findUnique({
    required _i3.TripsWhereUniqueInput where,
    _i3.TripsSelect? select,
    _i3.TripsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trips?>(
      action: 'findUniquetrips',
      result: result,
      factory: (e) => e != null ? _i2.Trips.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Trips> findUniqueOrThrow({
    required _i3.TripsWhereUniqueInput where,
    _i3.TripsSelect? select,
    _i3.TripsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trips>(
      action: 'findUniquetripsOrThrow',
      result: result,
      factory: (e) => _i2.Trips.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Trips?> findFirst({
    _i3.TripsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TripsOrderByWithRelationInput>,
            _i3.TripsOrderByWithRelationInput>?
        orderBy,
    _i3.TripsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TripsScalar, Iterable<_i3.TripsScalar>>? distinct,
    _i3.TripsSelect? select,
    _i3.TripsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trips?>(
      action: 'findFirsttrips',
      result: result,
      factory: (e) => e != null ? _i2.Trips.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Trips> findFirstOrThrow({
    _i3.TripsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TripsOrderByWithRelationInput>,
            _i3.TripsOrderByWithRelationInput>?
        orderBy,
    _i3.TripsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TripsScalar, Iterable<_i3.TripsScalar>>? distinct,
    _i3.TripsSelect? select,
    _i3.TripsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trips>(
      action: 'findFirsttripsOrThrow',
      result: result,
      factory: (e) => _i2.Trips.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Trips>> findMany({
    _i3.TripsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TripsOrderByWithRelationInput>,
            _i3.TripsOrderByWithRelationInput>?
        orderBy,
    _i3.TripsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TripsScalar, Iterable<_i3.TripsScalar>>? distinct,
    _i3.TripsSelect? select,
    _i3.TripsInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Trips>>(
      action: 'findManytrips',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Trips.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Trips> create({
    required _i1
        .PrismaUnion<_i3.TripsCreateInput, _i3.TripsUncheckedCreateInput>
        data,
    _i3.TripsSelect? select,
    _i3.TripsInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trips>(
      action: 'createOnetrips',
      result: result,
      factory: (e) => _i2.Trips.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.TripsCreateManyInput,
            Iterable<_i3.TripsCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManytrips',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManytripsAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.TripsCreateManyInput,
            Iterable<_i3.TripsCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManytripsAndReturnOutputTypeSelect? select,
    _i3.CreateManytripsAndReturnOutputTypeInclude? include,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManytripsAndReturnOutputType>>(
      action: 'createManytripsAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManytripsAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Trips?> update({
    required _i1
        .PrismaUnion<_i3.TripsUpdateInput, _i3.TripsUncheckedUpdateInput>
        data,
    required _i3.TripsWhereUniqueInput where,
    _i3.TripsSelect? select,
    _i3.TripsInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trips?>(
      action: 'updateOnetrips',
      result: result,
      factory: (e) => e != null ? _i2.Trips.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.TripsUpdateManyMutationInput,
            _i3.TripsUncheckedUpdateManyInput>
        data,
    _i3.TripsWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManytrips',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Trips> upsert({
    required _i3.TripsWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.TripsCreateInput, _i3.TripsUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.TripsUpdateInput, _i3.TripsUncheckedUpdateInput>
        update,
    _i3.TripsSelect? select,
    _i3.TripsInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trips>(
      action: 'upsertOnetrips',
      result: result,
      factory: (e) => _i2.Trips.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Trips?> delete({
    required _i3.TripsWhereUniqueInput where,
    _i3.TripsSelect? select,
    _i3.TripsInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Trips?>(
      action: 'deleteOnetrips',
      result: result,
      factory: (e) => e != null ? _i2.Trips.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.TripsWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManytrips',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.TripsGroupByOutputType>> groupBy({
    _i3.TripsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TripsOrderByWithAggregationInput>,
            _i3.TripsOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.TripsScalar>, _i3.TripsScalar> by,
    _i3.TripsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.TripsGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.TripsGroupByOutputType>>(
      action: 'groupBytrips',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.TripsGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateTrips> aggregate({
    _i3.TripsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.TripsOrderByWithRelationInput>,
            _i3.TripsOrderByWithRelationInput>?
        orderBy,
    _i3.TripsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateTripsSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'trips',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateTrips>(
      action: 'aggregatetrips',
      result: result,
      factory: (e) => _i3.AggregateTrips.fromJson(e),
    );
  }
}

class UsersDelegate {
  const UsersDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Users?> findUnique({
    required _i3.UsersWhereUniqueInput where,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users?>(
      action: 'findUniqueusers',
      result: result,
      factory: (e) => e != null ? _i2.Users.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Users> findUniqueOrThrow({
    required _i3.UsersWhereUniqueInput where,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users>(
      action: 'findUniqueusersOrThrow',
      result: result,
      factory: (e) => _i2.Users.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Users?> findFirst({
    _i3.UsersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsersOrderByWithRelationInput>,
            _i3.UsersOrderByWithRelationInput>?
        orderBy,
    _i3.UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UsersScalar, Iterable<_i3.UsersScalar>>? distinct,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users?>(
      action: 'findFirstusers',
      result: result,
      factory: (e) => e != null ? _i2.Users.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Users> findFirstOrThrow({
    _i3.UsersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsersOrderByWithRelationInput>,
            _i3.UsersOrderByWithRelationInput>?
        orderBy,
    _i3.UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UsersScalar, Iterable<_i3.UsersScalar>>? distinct,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users>(
      action: 'findFirstusersOrThrow',
      result: result,
      factory: (e) => _i2.Users.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Users>> findMany({
    _i3.UsersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsersOrderByWithRelationInput>,
            _i3.UsersOrderByWithRelationInput>?
        orderBy,
    _i3.UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UsersScalar, Iterable<_i3.UsersScalar>>? distinct,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Users>>(
      action: 'findManyusers',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Users.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Users> create({
    required _i1
        .PrismaUnion<_i3.UsersCreateInput, _i3.UsersUncheckedCreateInput>
        data,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users>(
      action: 'createOneusers',
      result: result,
      factory: (e) => _i2.Users.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.UsersCreateManyInput,
            Iterable<_i3.UsersCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyusers',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyusersAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.UsersCreateManyInput,
            Iterable<_i3.UsersCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyusersAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CreateManyusersAndReturnOutputType>>(
      action: 'createManyusersAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyusersAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Users?> update({
    required _i1
        .PrismaUnion<_i3.UsersUpdateInput, _i3.UsersUncheckedUpdateInput>
        data,
    required _i3.UsersWhereUniqueInput where,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users?>(
      action: 'updateOneusers',
      result: result,
      factory: (e) => e != null ? _i2.Users.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.UsersUpdateManyMutationInput,
            _i3.UsersUncheckedUpdateManyInput>
        data,
    _i3.UsersWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyusers',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Users> upsert({
    required _i3.UsersWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.UsersCreateInput, _i3.UsersUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.UsersUpdateInput, _i3.UsersUncheckedUpdateInput>
        update,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users>(
      action: 'upsertOneusers',
      result: result,
      factory: (e) => _i2.Users.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Users?> delete({
    required _i3.UsersWhereUniqueInput where,
    _i3.UsersSelect? select,
    _i3.UsersInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Users?>(
      action: 'deleteOneusers',
      result: result,
      factory: (e) => e != null ? _i2.Users.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.UsersWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyusers',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.UsersGroupByOutputType>> groupBy({
    _i3.UsersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsersOrderByWithAggregationInput>,
            _i3.UsersOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.UsersScalar>, _i3.UsersScalar> by,
    _i3.UsersScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.UsersGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.UsersGroupByOutputType>>(
      action: 'groupByusers',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.UsersGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateUsers> aggregate({
    _i3.UsersWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.UsersOrderByWithRelationInput>,
            _i3.UsersOrderByWithRelationInput>?
        orderBy,
    _i3.UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateUsersSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'users',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateUsers>(
      action: 'aggregateusers',
      result: result,
      factory: (e) => _i3.AggregateUsers.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [],
    'models': [
      {
        'name': 'place_tags',
        'dbName': null,
        'fields': [
          {
            'name': 'place_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tag_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'places',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'places',
            'relationName': 'place_tagsToplaces',
            'relationFromFields': ['place_id'],
            'relationToFields': ['place_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tags',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'tags',
            'relationName': 'place_tagsTotags',
            'relationFromFields': ['tag_id'],
            'relationToFields': ['tag_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': {
          'name': null,
          'fields': [
            'place_id',
            'tag_id',
          ],
        },
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'places',
        'dbName': null,
        'fields': [
          {
            'name': 'place_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'trip_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'start_time',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'end_time',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'place_tags',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'place_tags',
            'relationName': 'place_tagsToplaces',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'trips',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'trips',
            'relationName': 'placesTotrips',
            'relationFromFields': ['trip_id'],
            'relationToFields': ['trip_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'users',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'users',
            'relationName': 'placesTousers',
            'relationFromFields': ['user_id'],
            'relationToFields': ['user_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'tags',
        'dbName': null,
        'fields': [
          {
            'name': 'tag_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tag_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'place_tags',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'place_tags',
            'relationName': 'place_tagsTotags',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'trips',
        'dbName': null,
        'fields': [
          {
            'name': 'trip_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'start_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'end_date',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'created_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updated_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'places',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'places',
            'relationName': 'placesTotrips',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'users',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'users',
            'relationName': 'tripsTousers',
            'relationFromFields': ['user_id'],
            'relationToFields': ['user_id'],
            'relationOnDelete': 'NoAction',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'users',
        'dbName': null,
        'fields': [
          {
            'name': 'user_id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': {
              'name': 'autoincrement',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'username',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'first_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'last_name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'places',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'places',
            'relationName': 'placesTousers',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'trips',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'trips',
            'relationName': 'tripsTousers',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
    'indexes': [
      {
        'model': 'place_tags',
        'type': 'id',
        'isDefinedOnField': false,
        'fields': [
          {'name': 'place_id'},
          {'name': 'tag_id'},
        ],
      },
      {
        'model': 'places',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'place_id'}
        ],
      },
      {
        'model': 'tags',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'tag_id'}
        ],
      },
      {
        'model': 'tags',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'tag_name'}
        ],
      },
      {
        'model': 'trips',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'trip_id'}
        ],
      },
      {
        'model': 'users',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'user_id'}
        ],
      },
      {
        'model': 'users',
        'type': 'unique',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'email'}
        ],
      },
    ],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        engine: $engine,
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.BinaryEngine(
        schema:
            'generator client {\n  provider = "dart run orm"\n  output   = "generated_dart_client"\n}\n\ndatasource db {\n  provider = "postgresql"\n  url      = env("DATABASE_URL")\n}\n\nmodel place_tags {\n  place_id Int\n  tag_id   Int\n  places   places @relation(fields: [place_id], references: [place_id], onDelete: NoAction, onUpdate: NoAction)\n  tags     tags   @relation(fields: [tag_id], references: [tag_id], onDelete: NoAction, onUpdate: NoAction)\n\n  @@id([place_id, tag_id])\n}\n\nmodel places {\n  place_id    Int          @id @default(autoincrement())\n  trip_id     Int\n  user_id     Int\n  title       String       @db.VarChar(100)\n  description String?\n  start_time  DateTime     @db.Timestamp(6)\n  end_time    DateTime?    @db.Timestamp(6)\n  place_tags  place_tags[]\n  trips       trips        @relation(fields: [trip_id], references: [trip_id], onDelete: NoAction, onUpdate: NoAction)\n  users       users        @relation(fields: [user_id], references: [user_id], onDelete: NoAction, onUpdate: NoAction)\n}\n\nmodel tags {\n  tag_id      Int          @id @default(autoincrement())\n  tag_name    String       @unique @db.VarChar(50)\n  description String?\n  place_tags  place_tags[]\n}\n\nmodel trips {\n  trip_id     Int       @id @default(autoincrement())\n  user_id     Int\n  title       String    @db.VarChar(100)\n  description String?\n  start_date  DateTime  @db.Date\n  end_date    DateTime? @db.Date\n  created_at  DateTime? @default(now()) @db.Timestamp(6)\n  updated_at  DateTime? @default(now()) @db.Timestamp(6)\n  places      places[]\n  users       users     @relation(fields: [user_id], references: [user_id], onDelete: NoAction, onUpdate: NoAction)\n}\n\nmodel users {\n  user_id    Int      @id @default(autoincrement())\n  username   String   @db.VarChar(50)\n  email      String   @unique @db.VarChar(100)\n  first_name String?  @db.VarChar(50)\n  last_name  String?  @db.VarChar(50)\n  places     places[]\n  trips      trips[]\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.environment,
            'DATABASE_URL',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  PlaceTagsDelegate get placeTags => PlaceTagsDelegate._(this);

  PlacesDelegate get places => PlacesDelegate._(this);

  TagsDelegate get tags => TagsDelegate._(this);

  TripsDelegate get trips => TripsDelegate._(this);

  UsersDelegate get users => UsersDelegate._(this);
}
