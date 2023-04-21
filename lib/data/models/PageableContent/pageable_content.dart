import 'package:freezed_annotation/freezed_annotation.dart';

part 'pageable_content.freezed.dart';
part 'pageable_content.g.dart';

@Freezed(genericArgumentFactories: true)
class PageableContent<T> with _$PageableContent {
  @JsonSerializable(
      explicitToJson: true,
      includeIfNull: false,
      genericArgumentFactories: true)
  const factory PageableContent({
    required int totalPages,
    required int totalElements,
    required int size,
    required List<T> content,
    required int number,
    required Sort sort,
    required Pageable pageable,
    required int numberOfElements,
    required bool first,
    required bool last,
    required bool empty,
  }) = _PageableContent;

  factory PageableContent.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PageableContentFromJson(json, fromJsonT);
}

@freezed
class Pageable with _$Pageable {
  const factory Pageable({
    required int offset,
    required Sort sort,
    required int pageNumber,
    required int pageSize,
    required bool paged,
    required bool unpaged,
  }) = _Pageable;

  factory Pageable.fromJson(Map<String, dynamic> json) =>
      _$PageableFromJson(json);
}

@freezed
class Sort with _$Sort {
  const factory Sort({
    required bool empty,
    required bool sorted,
    required bool unsorted,
  }) = _Sort;

  factory Sort.fromJson(Map<String, dynamic> json) => _$SortFromJson(json);
}
