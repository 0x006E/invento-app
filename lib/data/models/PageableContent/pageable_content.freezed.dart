// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pageable_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageableContent<T> _$PageableContentFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _PageableContent<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$PageableContent<T> {
  int get totalPages => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<T> get content => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;
  Pageable get pageable => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageableContentCopyWith<T, PageableContent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableContentCopyWith<T, $Res> {
  factory $PageableContentCopyWith(
          PageableContent<T> value, $Res Function(PageableContent<T>) then) =
      _$PageableContentCopyWithImpl<T, $Res, PageableContent<T>>;
  @useResult
  $Res call(
      {int totalPages,
      int totalElements,
      int size,
      List<T> content,
      int number,
      Sort sort,
      Pageable pageable,
      int numberOfElements,
      bool first,
      bool last,
      bool empty});

  $SortCopyWith<$Res> get sort;
  $PageableCopyWith<$Res> get pageable;
}

/// @nodoc
class _$PageableContentCopyWithImpl<T, $Res, $Val extends PageableContent<T>>
    implements $PageableContentCopyWith<T, $Res> {
  _$PageableContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? totalElements = null,
    Object? size = null,
    Object? content = null,
    Object? number = null,
    Object? sort = null,
    Object? pageable = null,
    Object? numberOfElements = null,
    Object? first = null,
    Object? last = null,
    Object? empty = null,
  }) {
    return _then(_value.copyWith(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PageableCopyWith<$Res> get pageable {
    return $PageableCopyWith<$Res>(_value.pageable, (value) {
      return _then(_value.copyWith(pageable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PageableContentCopyWith<T, $Res>
    implements $PageableContentCopyWith<T, $Res> {
  factory _$$_PageableContentCopyWith(_$_PageableContent<T> value,
          $Res Function(_$_PageableContent<T>) then) =
      __$$_PageableContentCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int totalPages,
      int totalElements,
      int size,
      List<T> content,
      int number,
      Sort sort,
      Pageable pageable,
      int numberOfElements,
      bool first,
      bool last,
      bool empty});

  @override
  $SortCopyWith<$Res> get sort;
  @override
  $PageableCopyWith<$Res> get pageable;
}

/// @nodoc
class __$$_PageableContentCopyWithImpl<T, $Res>
    extends _$PageableContentCopyWithImpl<T, $Res, _$_PageableContent<T>>
    implements _$$_PageableContentCopyWith<T, $Res> {
  __$$_PageableContentCopyWithImpl(
      _$_PageableContent<T> _value, $Res Function(_$_PageableContent<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? totalElements = null,
    Object? size = null,
    Object? content = null,
    Object? number = null,
    Object? sort = null,
    Object? pageable = null,
    Object? numberOfElements = null,
    Object? first = null,
    Object? last = null,
    Object? empty = null,
  }) {
    return _then(_$_PageableContent<T>(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<T>,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, genericArgumentFactories: true)
class _$_PageableContent<T> implements _PageableContent<T> {
  const _$_PageableContent(
      {required this.totalPages,
      required this.totalElements,
      required this.size,
      required final List<T> content,
      required this.number,
      required this.sort,
      required this.pageable,
      required this.numberOfElements,
      required this.first,
      required this.last,
      required this.empty})
      : _content = content;

  factory _$_PageableContent.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_PageableContentFromJson(json, fromJsonT);

  @override
  final int totalPages;
  @override
  final int totalElements;
  @override
  final int size;
  final List<T> _content;
  @override
  List<T> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final int number;
  @override
  final Sort sort;
  @override
  final Pageable pageable;
  @override
  final int numberOfElements;
  @override
  final bool first;
  @override
  final bool last;
  @override
  final bool empty;

  @override
  String toString() {
    return 'PageableContent<$T>(totalPages: $totalPages, totalElements: $totalElements, size: $size, content: $content, number: $number, sort: $sort, pageable: $pageable, numberOfElements: $numberOfElements, first: $first, last: $last, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageableContent<T> &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalPages,
      totalElements,
      size,
      const DeepCollectionEquality().hash(_content),
      number,
      sort,
      pageable,
      numberOfElements,
      first,
      last,
      empty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageableContentCopyWith<T, _$_PageableContent<T>> get copyWith =>
      __$$_PageableContentCopyWithImpl<T, _$_PageableContent<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_PageableContentToJson<T>(this, toJsonT);
  }
}

abstract class _PageableContent<T> implements PageableContent<T> {
  const factory _PageableContent(
      {required final int totalPages,
      required final int totalElements,
      required final int size,
      required final List<T> content,
      required final int number,
      required final Sort sort,
      required final Pageable pageable,
      required final int numberOfElements,
      required final bool first,
      required final bool last,
      required final bool empty}) = _$_PageableContent<T>;

  factory _PageableContent.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_PageableContent<T>.fromJson;

  @override
  int get totalPages;
  @override
  int get totalElements;
  @override
  int get size;
  @override
  List<T> get content;
  @override
  int get number;
  @override
  Sort get sort;
  @override
  Pageable get pageable;
  @override
  int get numberOfElements;
  @override
  bool get first;
  @override
  bool get last;
  @override
  bool get empty;
  @override
  @JsonKey(ignore: true)
  _$$_PageableContentCopyWith<T, _$_PageableContent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return _Pageable.fromJson(json);
}

/// @nodoc
mixin _$Pageable {
  int get offset => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get paged => throw _privateConstructorUsedError;
  bool get unpaged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageableCopyWith<Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableCopyWith<$Res> {
  factory $PageableCopyWith(Pageable value, $Res Function(Pageable) then) =
      _$PageableCopyWithImpl<$Res, Pageable>;
  @useResult
  $Res call(
      {int offset,
      Sort sort,
      int pageNumber,
      int pageSize,
      bool paged,
      bool unpaged});

  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class _$PageableCopyWithImpl<$Res, $Val extends Pageable>
    implements $PageableCopyWith<$Res> {
  _$PageableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? sort = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? unpaged = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PageableCopyWith<$Res> implements $PageableCopyWith<$Res> {
  factory _$$_PageableCopyWith(
          _$_Pageable value, $Res Function(_$_Pageable) then) =
      __$$_PageableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offset,
      Sort sort,
      int pageNumber,
      int pageSize,
      bool paged,
      bool unpaged});

  @override
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class __$$_PageableCopyWithImpl<$Res>
    extends _$PageableCopyWithImpl<$Res, _$_Pageable>
    implements _$$_PageableCopyWith<$Res> {
  __$$_PageableCopyWithImpl(
      _$_Pageable _value, $Res Function(_$_Pageable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? sort = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? paged = null,
    Object? unpaged = null,
  }) {
    return _then(_$_Pageable(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pageable implements _Pageable {
  const _$_Pageable(
      {required this.offset,
      required this.sort,
      required this.pageNumber,
      required this.pageSize,
      required this.paged,
      required this.unpaged});

  factory _$_Pageable.fromJson(Map<String, dynamic> json) =>
      _$$_PageableFromJson(json);

  @override
  final int offset;
  @override
  final Sort sort;
  @override
  final int pageNumber;
  @override
  final int pageSize;
  @override
  final bool paged;
  @override
  final bool unpaged;

  @override
  String toString() {
    return 'Pageable(offset: $offset, sort: $sort, pageNumber: $pageNumber, pageSize: $pageSize, paged: $paged, unpaged: $unpaged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pageable &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, offset, sort, pageNumber, pageSize, paged, unpaged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageableCopyWith<_$_Pageable> get copyWith =>
      __$$_PageableCopyWithImpl<_$_Pageable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageableToJson(
      this,
    );
  }
}

abstract class _Pageable implements Pageable {
  const factory _Pageable(
      {required final int offset,
      required final Sort sort,
      required final int pageNumber,
      required final int pageSize,
      required final bool paged,
      required final bool unpaged}) = _$_Pageable;

  factory _Pageable.fromJson(Map<String, dynamic> json) = _$_Pageable.fromJson;

  @override
  int get offset;
  @override
  Sort get sort;
  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  bool get paged;
  @override
  bool get unpaged;
  @override
  @JsonKey(ignore: true)
  _$$_PageableCopyWith<_$_Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}

Sort _$SortFromJson(Map<String, dynamic> json) {
  return _Sort.fromJson(json);
}

/// @nodoc
mixin _$Sort {
  bool get empty => throw _privateConstructorUsedError;
  bool get sorted => throw _privateConstructorUsedError;
  bool get unsorted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortCopyWith<Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortCopyWith<$Res> {
  factory $SortCopyWith(Sort value, $Res Function(Sort) then) =
      _$SortCopyWithImpl<$Res, Sort>;
  @useResult
  $Res call({bool empty, bool sorted, bool unsorted});
}

/// @nodoc
class _$SortCopyWithImpl<$Res, $Val extends Sort>
    implements $SortCopyWith<$Res> {
  _$SortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_value.copyWith(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SortCopyWith<$Res> implements $SortCopyWith<$Res> {
  factory _$$_SortCopyWith(_$_Sort value, $Res Function(_$_Sort) then) =
      __$$_SortCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool empty, bool sorted, bool unsorted});
}

/// @nodoc
class __$$_SortCopyWithImpl<$Res> extends _$SortCopyWithImpl<$Res, _$_Sort>
    implements _$$_SortCopyWith<$Res> {
  __$$_SortCopyWithImpl(_$_Sort _value, $Res Function(_$_Sort) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
    Object? sorted = null,
    Object? unsorted = null,
  }) {
    return _then(_$_Sort(
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
      sorted: null == sorted
          ? _value.sorted
          : sorted // ignore: cast_nullable_to_non_nullable
              as bool,
      unsorted: null == unsorted
          ? _value.unsorted
          : unsorted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sort implements _Sort {
  const _$_Sort(
      {required this.empty, required this.sorted, required this.unsorted});

  factory _$_Sort.fromJson(Map<String, dynamic> json) => _$$_SortFromJson(json);

  @override
  final bool empty;
  @override
  final bool sorted;
  @override
  final bool unsorted;

  @override
  String toString() {
    return 'Sort(empty: $empty, sorted: $sorted, unsorted: $unsorted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sort &&
            (identical(other.empty, empty) || other.empty == empty) &&
            (identical(other.sorted, sorted) || other.sorted == sorted) &&
            (identical(other.unsorted, unsorted) ||
                other.unsorted == unsorted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, empty, sorted, unsorted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SortCopyWith<_$_Sort> get copyWith =>
      __$$_SortCopyWithImpl<_$_Sort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SortToJson(
      this,
    );
  }
}

abstract class _Sort implements Sort {
  const factory _Sort(
      {required final bool empty,
      required final bool sorted,
      required final bool unsorted}) = _$_Sort;

  factory _Sort.fromJson(Map<String, dynamic> json) = _$_Sort.fromJson;

  @override
  bool get empty;
  @override
  bool get sorted;
  @override
  bool get unsorted;
  @override
  @JsonKey(ignore: true)
  _$$_SortCopyWith<_$_Sort> get copyWith => throw _privateConstructorUsedError;
}
