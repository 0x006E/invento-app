// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageableContent<T> _$$_PageableContentFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$_PageableContent<T>(
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      size: json['size'] as int,
      content: (json['content'] as List<dynamic>).map(fromJsonT).toList(),
      number: json['number'] as int,
      sort: Sort.fromJson(json['sort'] as Map<String, dynamic>),
      pageable: Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
      numberOfElements: json['numberOfElements'] as int,
      first: json['first'] as bool,
      last: json['last'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_PageableContentToJson<T>(
  _$_PageableContent<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'size': instance.size,
      'content': instance.content.map(toJsonT).toList(),
      'number': instance.number,
      'sort': instance.sort.toJson(),
      'pageable': instance.pageable.toJson(),
      'numberOfElements': instance.numberOfElements,
      'first': instance.first,
      'last': instance.last,
      'empty': instance.empty,
    };

_$_Pageable _$$_PageableFromJson(Map<String, dynamic> json) => _$_Pageable(
      offset: json['offset'] as int,
      sort: Sort.fromJson(json['sort'] as Map<String, dynamic>),
      pageNumber: json['pageNumber'] as int,
      pageSize: json['pageSize'] as int,
      paged: json['paged'] as bool,
      unpaged: json['unpaged'] as bool,
    );

Map<String, dynamic> _$$_PageableToJson(_$_Pageable instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'sort': instance.sort,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'paged': instance.paged,
      'unpaged': instance.unpaged,
    };

_$_Sort _$$_SortFromJson(Map<String, dynamic> json) => _$_Sort(
      empty: json['empty'] as bool,
      sorted: json['sorted'] as bool,
      unsorted: json['unsorted'] as bool,
    );

Map<String, dynamic> _$$_SortToJson(_$_Sort instance) => <String, dynamic>{
      'empty': instance.empty,
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
    };
