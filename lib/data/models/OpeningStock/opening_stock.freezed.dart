// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opening_stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpeningStock _$OpeningStockFromJson(Map<String, dynamic> json) {
  return _OpeningStock.fromJson(json);
}

/// @nodoc
mixin _$OpeningStock {
  String? get id => throw _privateConstructorUsedError;
  String? get openingStockId => throw _privateConstructorUsedError;
  String? get partyId => throw _privateConstructorUsedError;
  String? get partyType => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;
  String? get dayEndId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningStockCopyWith<OpeningStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningStockCopyWith<$Res> {
  factory $OpeningStockCopyWith(
          OpeningStock value, $Res Function(OpeningStock) then) =
      _$OpeningStockCopyWithImpl<$Res, OpeningStock>;
  @useResult
  $Res call(
      {String? id,
      String? openingStockId,
      String? partyId,
      String? partyType,
      List<Item> items,
      String? dayEndId});
}

/// @nodoc
class _$OpeningStockCopyWithImpl<$Res, $Val extends OpeningStock>
    implements $OpeningStockCopyWith<$Res> {
  _$OpeningStockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? openingStockId = freezed,
    Object? partyId = freezed,
    Object? partyType = freezed,
    Object? items = null,
    Object? dayEndId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      openingStockId: freezed == openingStockId
          ? _value.openingStockId
          : openingStockId // ignore: cast_nullable_to_non_nullable
              as String?,
      partyId: freezed == partyId
          ? _value.partyId
          : partyId // ignore: cast_nullable_to_non_nullable
              as String?,
      partyType: freezed == partyType
          ? _value.partyType
          : partyType // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      dayEndId: freezed == dayEndId
          ? _value.dayEndId
          : dayEndId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpeningStockCopyWith<$Res>
    implements $OpeningStockCopyWith<$Res> {
  factory _$$_OpeningStockCopyWith(
          _$_OpeningStock value, $Res Function(_$_OpeningStock) then) =
      __$$_OpeningStockCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? openingStockId,
      String? partyId,
      String? partyType,
      List<Item> items,
      String? dayEndId});
}

/// @nodoc
class __$$_OpeningStockCopyWithImpl<$Res>
    extends _$OpeningStockCopyWithImpl<$Res, _$_OpeningStock>
    implements _$$_OpeningStockCopyWith<$Res> {
  __$$_OpeningStockCopyWithImpl(
      _$_OpeningStock _value, $Res Function(_$_OpeningStock) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? openingStockId = freezed,
    Object? partyId = freezed,
    Object? partyType = freezed,
    Object? items = null,
    Object? dayEndId = freezed,
  }) {
    return _then(_$_OpeningStock(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      openingStockId: freezed == openingStockId
          ? _value.openingStockId
          : openingStockId // ignore: cast_nullable_to_non_nullable
              as String?,
      partyId: freezed == partyId
          ? _value.partyId
          : partyId // ignore: cast_nullable_to_non_nullable
              as String?,
      partyType: freezed == partyType
          ? _value.partyType
          : partyType // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      dayEndId: freezed == dayEndId
          ? _value.dayEndId
          : dayEndId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_OpeningStock implements _OpeningStock {
  const _$_OpeningStock(
      {this.id,
      this.openingStockId,
      this.partyId,
      this.partyType,
      required final List<Item> items,
      this.dayEndId})
      : _items = items;

  factory _$_OpeningStock.fromJson(Map<String, dynamic> json) =>
      _$$_OpeningStockFromJson(json);

  @override
  final String? id;
  @override
  final String? openingStockId;
  @override
  final String? partyId;
  @override
  final String? partyType;
  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? dayEndId;

  @override
  String toString() {
    return 'OpeningStock(id: $id, openingStockId: $openingStockId, partyId: $partyId, partyType: $partyType, items: $items, dayEndId: $dayEndId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpeningStock &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.openingStockId, openingStockId) ||
                other.openingStockId == openingStockId) &&
            (identical(other.partyId, partyId) || other.partyId == partyId) &&
            (identical(other.partyType, partyType) ||
                other.partyType == partyType) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.dayEndId, dayEndId) ||
                other.dayEndId == dayEndId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, openingStockId, partyId,
      partyType, const DeepCollectionEquality().hash(_items), dayEndId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpeningStockCopyWith<_$_OpeningStock> get copyWith =>
      __$$_OpeningStockCopyWithImpl<_$_OpeningStock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpeningStockToJson(
      this,
    );
  }
}

abstract class _OpeningStock implements OpeningStock {
  const factory _OpeningStock(
      {final String? id,
      final String? openingStockId,
      final String? partyId,
      final String? partyType,
      required final List<Item> items,
      final String? dayEndId}) = _$_OpeningStock;

  factory _OpeningStock.fromJson(Map<String, dynamic> json) =
      _$_OpeningStock.fromJson;

  @override
  String? get id;
  @override
  String? get openingStockId;
  @override
  String? get partyId;
  @override
  String? get partyType;
  @override
  List<Item> get items;
  @override
  String? get dayEndId;
  @override
  @JsonKey(ignore: true)
  _$$_OpeningStockCopyWith<_$_OpeningStock> get copyWith =>
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
