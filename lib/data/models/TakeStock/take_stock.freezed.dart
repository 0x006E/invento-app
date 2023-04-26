// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'take_stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TakeStock _$TakeStockFromJson(Map<String, dynamic> json) {
  return _TakeStock.fromJson(json);
}

/// @nodoc
mixin _$TakeStock {
  String? get id => throw _privateConstructorUsedError;
  String? get takeId => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  String get fromId => throw _privateConstructorUsedError;
  String get fromType => throw _privateConstructorUsedError;
  String? get toId => throw _privateConstructorUsedError;
  String? get toType => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TakeStockCopyWith<TakeStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakeStockCopyWith<$Res> {
  factory $TakeStockCopyWith(TakeStock value, $Res Function(TakeStock) then) =
      _$TakeStockCopyWithImpl<$Res, TakeStock>;
  @useResult
  $Res call(
      {String? id,
      String? takeId,
      List<Item> items,
      String fromId,
      String fromType,
      String? toId,
      String? toType,
      DateTime? dateTime});
}

/// @nodoc
class _$TakeStockCopyWithImpl<$Res, $Val extends TakeStock>
    implements $TakeStockCopyWith<$Res> {
  _$TakeStockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? takeId = freezed,
    Object? items = null,
    Object? fromId = null,
    Object? fromType = null,
    Object? toId = freezed,
    Object? toType = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      takeId: freezed == takeId
          ? _value.takeId
          : takeId // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromType: null == fromType
          ? _value.fromType
          : fromType // ignore: cast_nullable_to_non_nullable
              as String,
      toId: freezed == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String?,
      toType: freezed == toType
          ? _value.toType
          : toType // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TakeStockCopyWith<$Res> implements $TakeStockCopyWith<$Res> {
  factory _$$_TakeStockCopyWith(
          _$_TakeStock value, $Res Function(_$_TakeStock) then) =
      __$$_TakeStockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? takeId,
      List<Item> items,
      String fromId,
      String fromType,
      String? toId,
      String? toType,
      DateTime? dateTime});
}

/// @nodoc
class __$$_TakeStockCopyWithImpl<$Res>
    extends _$TakeStockCopyWithImpl<$Res, _$_TakeStock>
    implements _$$_TakeStockCopyWith<$Res> {
  __$$_TakeStockCopyWithImpl(
      _$_TakeStock _value, $Res Function(_$_TakeStock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? takeId = freezed,
    Object? items = null,
    Object? fromId = null,
    Object? fromType = null,
    Object? toId = freezed,
    Object? toType = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$_TakeStock(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      takeId: freezed == takeId
          ? _value.takeId
          : takeId // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromType: null == fromType
          ? _value.fromType
          : fromType // ignore: cast_nullable_to_non_nullable
              as String,
      toId: freezed == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String?,
      toType: freezed == toType
          ? _value.toType
          : toType // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_TakeStock implements _TakeStock {
  const _$_TakeStock(
      {this.id,
      this.takeId,
      required final List<Item> items,
      required this.fromId,
      required this.fromType,
      this.toId,
      this.toType,
      this.dateTime})
      : _items = items;

  factory _$_TakeStock.fromJson(Map<String, dynamic> json) =>
      _$$_TakeStockFromJson(json);

  @override
  final String? id;
  @override
  final String? takeId;
  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String fromId;
  @override
  final String fromType;
  @override
  final String? toId;
  @override
  final String? toType;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'TakeStock(id: $id, takeId: $takeId, items: $items, fromId: $fromId, fromType: $fromType, toId: $toId, toType: $toType, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TakeStock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.takeId, takeId) || other.takeId == takeId) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.fromType, fromType) ||
                other.fromType == fromType) &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.toType, toType) || other.toType == toType) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      takeId,
      const DeepCollectionEquality().hash(_items),
      fromId,
      fromType,
      toId,
      toType,
      dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TakeStockCopyWith<_$_TakeStock> get copyWith =>
      __$$_TakeStockCopyWithImpl<_$_TakeStock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TakeStockToJson(
      this,
    );
  }
}

abstract class _TakeStock implements TakeStock {
  const factory _TakeStock(
      {final String? id,
      final String? takeId,
      required final List<Item> items,
      required final String fromId,
      required final String fromType,
      final String? toId,
      final String? toType,
      final DateTime? dateTime}) = _$_TakeStock;

  factory _TakeStock.fromJson(Map<String, dynamic> json) =
      _$_TakeStock.fromJson;

  @override
  String? get id;
  @override
  String? get takeId;
  @override
  List<Item> get items;
  @override
  String get fromId;
  @override
  String get fromType;
  @override
  String? get toId;
  @override
  String? get toType;
  @override
  DateTime? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_TakeStockCopyWith<_$_TakeStock> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get productId => throw _privateConstructorUsedError;
  int get quantityFull => throw _privateConstructorUsedError;
  int get quantityEmpty => throw _privateConstructorUsedError;
  int get quantityDefective => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String productId,
      int quantityFull,
      int quantityEmpty,
      int quantityDefective});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantityFull = null,
    Object? quantityEmpty = null,
    Object? quantityDefective = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantityFull: null == quantityFull
          ? _value.quantityFull
          : quantityFull // ignore: cast_nullable_to_non_nullable
              as int,
      quantityEmpty: null == quantityEmpty
          ? _value.quantityEmpty
          : quantityEmpty // ignore: cast_nullable_to_non_nullable
              as int,
      quantityDefective: null == quantityDefective
          ? _value.quantityDefective
          : quantityDefective // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      int quantityFull,
      int quantityEmpty,
      int quantityDefective});
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantityFull = null,
    Object? quantityEmpty = null,
    Object? quantityDefective = null,
  }) {
    return _then(_$_Item(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantityFull: null == quantityFull
          ? _value.quantityFull
          : quantityFull // ignore: cast_nullable_to_non_nullable
              as int,
      quantityEmpty: null == quantityEmpty
          ? _value.quantityEmpty
          : quantityEmpty // ignore: cast_nullable_to_non_nullable
              as int,
      quantityDefective: null == quantityDefective
          ? _value.quantityDefective
          : quantityDefective // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item(
      {required this.productId,
      required this.quantityFull,
      required this.quantityEmpty,
      required this.quantityDefective});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String productId;
  @override
  final int quantityFull;
  @override
  final int quantityEmpty;
  @override
  final int quantityDefective;

  @override
  String toString() {
    return 'Item(productId: $productId, quantityFull: $quantityFull, quantityEmpty: $quantityEmpty, quantityDefective: $quantityDefective)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantityFull, quantityFull) ||
                other.quantityFull == quantityFull) &&
            (identical(other.quantityEmpty, quantityEmpty) ||
                other.quantityEmpty == quantityEmpty) &&
            (identical(other.quantityDefective, quantityDefective) ||
                other.quantityDefective == quantityDefective));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, productId, quantityFull, quantityEmpty, quantityDefective);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required final String productId,
      required final int quantityFull,
      required final int quantityEmpty,
      required final int quantityDefective}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get productId;
  @override
  int get quantityFull;
  @override
  int get quantityEmpty;
  @override
  int get quantityDefective;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
