// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sale _$SaleFromJson(Map<String, dynamic> json) {
  return _Sale.fromJson(json);
}

/// @nodoc
mixin _$Sale {
  String? get id => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get invoiceNumber => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get employeeId => throw _privateConstructorUsedError;
  String get fromId => throw _privateConstructorUsedError;
  String get fromType => throw _privateConstructorUsedError;
  int? get retailSailPrice => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;
  int? get netAmount => throw _privateConstructorUsedError;
  List<SaleItem> get saleItems => throw _privateConstructorUsedError;
  bool? get paid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleCopyWith<Sale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleCopyWith<$Res> {
  factory $SaleCopyWith(Sale value, $Res Function(Sale) then) =
      _$SaleCopyWithImpl<$Res, Sale>;
  @useResult
  $Res call(
      {String? id,
      DateTime dateTime,
      String invoiceNumber,
      String customerId,
      String employeeId,
      String fromId,
      String fromType,
      int? retailSailPrice,
      int discount,
      int? netAmount,
      List<SaleItem> saleItems,
      bool? paid});
}

/// @nodoc
class _$SaleCopyWithImpl<$Res, $Val extends Sale>
    implements $SaleCopyWith<$Res> {
  _$SaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateTime = null,
    Object? invoiceNumber = null,
    Object? customerId = null,
    Object? employeeId = null,
    Object? fromId = null,
    Object? fromType = null,
    Object? retailSailPrice = freezed,
    Object? discount = null,
    Object? netAmount = freezed,
    Object? saleItems = null,
    Object? paid = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromType: null == fromType
          ? _value.fromType
          : fromType // ignore: cast_nullable_to_non_nullable
              as String,
      retailSailPrice: freezed == retailSailPrice
          ? _value.retailSailPrice
          : retailSailPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      saleItems: null == saleItems
          ? _value.saleItems
          : saleItems // ignore: cast_nullable_to_non_nullable
              as List<SaleItem>,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaleCopyWith<$Res> implements $SaleCopyWith<$Res> {
  factory _$$_SaleCopyWith(_$_Sale value, $Res Function(_$_Sale) then) =
      __$$_SaleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      DateTime dateTime,
      String invoiceNumber,
      String customerId,
      String employeeId,
      String fromId,
      String fromType,
      int? retailSailPrice,
      int discount,
      int? netAmount,
      List<SaleItem> saleItems,
      bool? paid});
}

/// @nodoc
class __$$_SaleCopyWithImpl<$Res> extends _$SaleCopyWithImpl<$Res, _$_Sale>
    implements _$$_SaleCopyWith<$Res> {
  __$$_SaleCopyWithImpl(_$_Sale _value, $Res Function(_$_Sale) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateTime = null,
    Object? invoiceNumber = null,
    Object? customerId = null,
    Object? employeeId = null,
    Object? fromId = null,
    Object? fromType = null,
    Object? retailSailPrice = freezed,
    Object? discount = null,
    Object? netAmount = freezed,
    Object? saleItems = null,
    Object? paid = freezed,
  }) {
    return _then(_$_Sale(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as String,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromType: null == fromType
          ? _value.fromType
          : fromType // ignore: cast_nullable_to_non_nullable
              as String,
      retailSailPrice: freezed == retailSailPrice
          ? _value.retailSailPrice
          : retailSailPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      saleItems: null == saleItems
          ? _value._saleItems
          : saleItems // ignore: cast_nullable_to_non_nullable
              as List<SaleItem>,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_Sale implements _Sale {
  const _$_Sale(
      {this.id,
      required this.dateTime,
      required this.invoiceNumber,
      required this.customerId,
      required this.employeeId,
      required this.fromId,
      required this.fromType,
      this.retailSailPrice,
      required this.discount,
      this.netAmount,
      required final List<SaleItem> saleItems,
      this.paid})
      : _saleItems = saleItems;

  factory _$_Sale.fromJson(Map<String, dynamic> json) => _$$_SaleFromJson(json);

  @override
  final String? id;
  @override
  final DateTime dateTime;
  @override
  final String invoiceNumber;
  @override
  final String customerId;
  @override
  final String employeeId;
  @override
  final String fromId;
  @override
  final String fromType;
  @override
  final int? retailSailPrice;
  @override
  final int discount;
  @override
  final int? netAmount;
  final List<SaleItem> _saleItems;
  @override
  List<SaleItem> get saleItems {
    if (_saleItems is EqualUnmodifiableListView) return _saleItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleItems);
  }

  @override
  final bool? paid;

  @override
  String toString() {
    return 'Sale(id: $id, dateTime: $dateTime, invoiceNumber: $invoiceNumber, customerId: $customerId, employeeId: $employeeId, fromId: $fromId, fromType: $fromType, retailSailPrice: $retailSailPrice, discount: $discount, netAmount: $netAmount, saleItems: $saleItems, paid: $paid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sale &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.fromType, fromType) ||
                other.fromType == fromType) &&
            (identical(other.retailSailPrice, retailSailPrice) ||
                other.retailSailPrice == retailSailPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            const DeepCollectionEquality()
                .equals(other._saleItems, _saleItems) &&
            (identical(other.paid, paid) || other.paid == paid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      dateTime,
      invoiceNumber,
      customerId,
      employeeId,
      fromId,
      fromType,
      retailSailPrice,
      discount,
      netAmount,
      const DeepCollectionEquality().hash(_saleItems),
      paid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleCopyWith<_$_Sale> get copyWith =>
      __$$_SaleCopyWithImpl<_$_Sale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleToJson(
      this,
    );
  }
}

abstract class _Sale implements Sale {
  const factory _Sale(
      {final String? id,
      required final DateTime dateTime,
      required final String invoiceNumber,
      required final String customerId,
      required final String employeeId,
      required final String fromId,
      required final String fromType,
      final int? retailSailPrice,
      required final int discount,
      final int? netAmount,
      required final List<SaleItem> saleItems,
      final bool? paid}) = _$_Sale;

  factory _Sale.fromJson(Map<String, dynamic> json) = _$_Sale.fromJson;

  @override
  String? get id;
  @override
  DateTime get dateTime;
  @override
  String get invoiceNumber;
  @override
  String get customerId;
  @override
  String get employeeId;
  @override
  String get fromId;
  @override
  String get fromType;
  @override
  int? get retailSailPrice;
  @override
  int get discount;
  @override
  int? get netAmount;
  @override
  List<SaleItem> get saleItems;
  @override
  bool? get paid;
  @override
  @JsonKey(ignore: true)
  _$$_SaleCopyWith<_$_Sale> get copyWith => throw _privateConstructorUsedError;
}

SaleItem _$SaleItemFromJson(Map<String, dynamic> json) {
  return _SaleItem.fromJson(json);
}

/// @nodoc
mixin _$SaleItem {
  String get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleItemCopyWith<SaleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleItemCopyWith<$Res> {
  factory $SaleItemCopyWith(SaleItem value, $Res Function(SaleItem) then) =
      _$SaleItemCopyWithImpl<$Res, SaleItem>;
  @useResult
  $Res call({String productId, int quantity});
}

/// @nodoc
class _$SaleItemCopyWithImpl<$Res, $Val extends SaleItem>
    implements $SaleItemCopyWith<$Res> {
  _$SaleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SaleItemCopyWith<$Res> implements $SaleItemCopyWith<$Res> {
  factory _$$_SaleItemCopyWith(
          _$_SaleItem value, $Res Function(_$_SaleItem) then) =
      __$$_SaleItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, int quantity});
}

/// @nodoc
class __$$_SaleItemCopyWithImpl<$Res>
    extends _$SaleItemCopyWithImpl<$Res, _$_SaleItem>
    implements _$$_SaleItemCopyWith<$Res> {
  __$$_SaleItemCopyWithImpl(
      _$_SaleItem _value, $Res Function(_$_SaleItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$_SaleItem(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaleItem implements _SaleItem {
  const _$_SaleItem({required this.productId, required this.quantity});

  factory _$_SaleItem.fromJson(Map<String, dynamic> json) =>
      _$$_SaleItemFromJson(json);

  @override
  final String productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'SaleItem(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaleItem &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaleItemCopyWith<_$_SaleItem> get copyWith =>
      __$$_SaleItemCopyWithImpl<_$_SaleItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleItemToJson(
      this,
    );
  }
}

abstract class _SaleItem implements SaleItem {
  const factory _SaleItem(
      {required final String productId,
      required final int quantity}) = _$_SaleItem;

  factory _SaleItem.fromJson(Map<String, dynamic> json) = _$_SaleItem.fromJson;

  @override
  String get productId;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_SaleItemCopyWith<_$_SaleItem> get copyWith =>
      throw _privateConstructorUsedError;
}
