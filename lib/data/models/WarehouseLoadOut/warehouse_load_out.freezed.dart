// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_load_out.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WarehouseLoadOut _$WarehouseLoadOutFromJson(Map<String, dynamic> json) {
  return _WarehouseLoadOut.fromJson(json);
}

/// @nodoc
mixin _$WarehouseLoadOut {
  String? get id => throw _privateConstructorUsedError;
  String? get loadOutId => throw _privateConstructorUsedError;
  String? get warehouseId => throw _privateConstructorUsedError;
  String get vehicleNumber => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  String get ervnumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarehouseLoadOutCopyWith<WarehouseLoadOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseLoadOutCopyWith<$Res> {
  factory $WarehouseLoadOutCopyWith(
          WarehouseLoadOut value, $Res Function(WarehouseLoadOut) then) =
      _$WarehouseLoadOutCopyWithImpl<$Res, WarehouseLoadOut>;
  @useResult
  $Res call(
      {String? id,
      String? loadOutId,
      String? warehouseId,
      String vehicleNumber,
      String? imageUrl,
      DateTime dateTime,
      List<Product> products,
      String ervnumber});
}

/// @nodoc
class _$WarehouseLoadOutCopyWithImpl<$Res, $Val extends WarehouseLoadOut>
    implements $WarehouseLoadOutCopyWith<$Res> {
  _$WarehouseLoadOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? loadOutId = freezed,
    Object? warehouseId = freezed,
    Object? vehicleNumber = null,
    Object? imageUrl = freezed,
    Object? dateTime = null,
    Object? products = null,
    Object? ervnumber = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      loadOutId: freezed == loadOutId
          ? _value.loadOutId
          : loadOutId // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouseId: freezed == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: null == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      ervnumber: null == ervnumber
          ? _value.ervnumber
          : ervnumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WarehouseLoadOutCopyWith<$Res>
    implements $WarehouseLoadOutCopyWith<$Res> {
  factory _$$_WarehouseLoadOutCopyWith(
          _$_WarehouseLoadOut value, $Res Function(_$_WarehouseLoadOut) then) =
      __$$_WarehouseLoadOutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? loadOutId,
      String? warehouseId,
      String vehicleNumber,
      String? imageUrl,
      DateTime dateTime,
      List<Product> products,
      String ervnumber});
}

/// @nodoc
class __$$_WarehouseLoadOutCopyWithImpl<$Res>
    extends _$WarehouseLoadOutCopyWithImpl<$Res, _$_WarehouseLoadOut>
    implements _$$_WarehouseLoadOutCopyWith<$Res> {
  __$$_WarehouseLoadOutCopyWithImpl(
      _$_WarehouseLoadOut _value, $Res Function(_$_WarehouseLoadOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? loadOutId = freezed,
    Object? warehouseId = freezed,
    Object? vehicleNumber = null,
    Object? imageUrl = freezed,
    Object? dateTime = null,
    Object? products = null,
    Object? ervnumber = null,
  }) {
    return _then(_$_WarehouseLoadOut(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      loadOutId: freezed == loadOutId
          ? _value.loadOutId
          : loadOutId // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouseId: freezed == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: null == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      ervnumber: null == ervnumber
          ? _value.ervnumber
          : ervnumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_WarehouseLoadOut implements _WarehouseLoadOut {
  const _$_WarehouseLoadOut(
      {this.id,
      this.loadOutId,
      this.warehouseId,
      required this.vehicleNumber,
      this.imageUrl,
      required this.dateTime,
      required final List<Product> products,
      required this.ervnumber})
      : _products = products;

  factory _$_WarehouseLoadOut.fromJson(Map<String, dynamic> json) =>
      _$$_WarehouseLoadOutFromJson(json);

  @override
  final String? id;
  @override
  final String? loadOutId;
  @override
  final String? warehouseId;
  @override
  final String vehicleNumber;
  @override
  final String? imageUrl;
  @override
  final DateTime dateTime;
  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final String ervnumber;

  @override
  String toString() {
    return 'WarehouseLoadOut(id: $id, loadOutId: $loadOutId, warehouseId: $warehouseId, vehicleNumber: $vehicleNumber, imageUrl: $imageUrl, dateTime: $dateTime, products: $products, ervnumber: $ervnumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WarehouseLoadOut &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.loadOutId, loadOutId) ||
                other.loadOutId == loadOutId) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.ervnumber, ervnumber) ||
                other.ervnumber == ervnumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      loadOutId,
      warehouseId,
      vehicleNumber,
      imageUrl,
      dateTime,
      const DeepCollectionEquality().hash(_products),
      ervnumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WarehouseLoadOutCopyWith<_$_WarehouseLoadOut> get copyWith =>
      __$$_WarehouseLoadOutCopyWithImpl<_$_WarehouseLoadOut>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WarehouseLoadOutToJson(
      this,
    );
  }
}

abstract class _WarehouseLoadOut implements WarehouseLoadOut {
  const factory _WarehouseLoadOut(
      {final String? id,
      final String? loadOutId,
      final String? warehouseId,
      required final String vehicleNumber,
      final String? imageUrl,
      required final DateTime dateTime,
      required final List<Product> products,
      required final String ervnumber}) = _$_WarehouseLoadOut;

  factory _WarehouseLoadOut.fromJson(Map<String, dynamic> json) =
      _$_WarehouseLoadOut.fromJson;

  @override
  String? get id;
  @override
  String? get loadOutId;
  @override
  String? get warehouseId;
  @override
  String get vehicleNumber;
  @override
  String? get imageUrl;
  @override
  DateTime get dateTime;
  @override
  List<Product> get products;
  @override
  String get ervnumber;
  @override
  @JsonKey(ignore: true)
  _$$_WarehouseLoadOutCopyWith<_$_WarehouseLoadOut> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({String productId, int quantity});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, int quantity});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$_Product(
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
class _$_Product implements _Product {
  const _$_Product({required this.productId, required this.quantity});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'Product(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
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
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String productId,
      required final int quantity}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get productId;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
