// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_load_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WarehouseLoadIn _$WarehouseLoadInFromJson(Map<String, dynamic> json) {
  return _WarehouseLoadIn.fromJson(json);
}

/// @nodoc
mixin _$WarehouseLoadIn {
  String? get id => throw _privateConstructorUsedError;
  String? get loadInId => throw _privateConstructorUsedError;
  String get warehouseId => throw _privateConstructorUsedError;
  String get vehicleNumber => throw _privateConstructorUsedError;
  String get invoiceNumber => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarehouseLoadInCopyWith<WarehouseLoadIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseLoadInCopyWith<$Res> {
  factory $WarehouseLoadInCopyWith(
          WarehouseLoadIn value, $Res Function(WarehouseLoadIn) then) =
      _$WarehouseLoadInCopyWithImpl<$Res, WarehouseLoadIn>;
  @useResult
  $Res call(
      {String? id,
      String? loadInId,
      String warehouseId,
      String vehicleNumber,
      String invoiceNumber,
      DateTime dateTime,
      List<Product> products});
}

/// @nodoc
class _$WarehouseLoadInCopyWithImpl<$Res, $Val extends WarehouseLoadIn>
    implements $WarehouseLoadInCopyWith<$Res> {
  _$WarehouseLoadInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? loadInId = freezed,
    Object? warehouseId = null,
    Object? vehicleNumber = null,
    Object? invoiceNumber = null,
    Object? dateTime = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      loadInId: freezed == loadInId
          ? _value.loadInId
          : loadInId // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleNumber: null == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WarehouseLoadInCopyWith<$Res>
    implements $WarehouseLoadInCopyWith<$Res> {
  factory _$$_WarehouseLoadInCopyWith(
          _$_WarehouseLoadIn value, $Res Function(_$_WarehouseLoadIn) then) =
      __$$_WarehouseLoadInCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? loadInId,
      String warehouseId,
      String vehicleNumber,
      String invoiceNumber,
      DateTime dateTime,
      List<Product> products});
}

/// @nodoc
class __$$_WarehouseLoadInCopyWithImpl<$Res>
    extends _$WarehouseLoadInCopyWithImpl<$Res, _$_WarehouseLoadIn>
    implements _$$_WarehouseLoadInCopyWith<$Res> {
  __$$_WarehouseLoadInCopyWithImpl(
      _$_WarehouseLoadIn _value, $Res Function(_$_WarehouseLoadIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? loadInId = freezed,
    Object? warehouseId = null,
    Object? vehicleNumber = null,
    Object? invoiceNumber = null,
    Object? dateTime = null,
    Object? products = null,
  }) {
    return _then(_$_WarehouseLoadIn(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      loadInId: freezed == loadInId
          ? _value.loadInId
          : loadInId // ignore: cast_nullable_to_non_nullable
              as String?,
      warehouseId: null == warehouseId
          ? _value.warehouseId
          : warehouseId // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleNumber: null == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_WarehouseLoadIn implements _WarehouseLoadIn {
  const _$_WarehouseLoadIn(
      {this.id,
      this.loadInId,
      required this.warehouseId,
      required this.vehicleNumber,
      required this.invoiceNumber,
      required this.dateTime,
      required final List<Product> products})
      : _products = products;

  factory _$_WarehouseLoadIn.fromJson(Map<String, dynamic> json) =>
      _$$_WarehouseLoadInFromJson(json);

  @override
  final String? id;
  @override
  final String? loadInId;
  @override
  final String warehouseId;
  @override
  final String vehicleNumber;
  @override
  final String invoiceNumber;
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
  String toString() {
    return 'WarehouseLoadIn(id: $id, loadInId: $loadInId, warehouseId: $warehouseId, vehicleNumber: $vehicleNumber, invoiceNumber: $invoiceNumber, dateTime: $dateTime, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WarehouseLoadIn &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.loadInId, loadInId) ||
                other.loadInId == loadInId) &&
            (identical(other.warehouseId, warehouseId) ||
                other.warehouseId == warehouseId) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      loadInId,
      warehouseId,
      vehicleNumber,
      invoiceNumber,
      dateTime,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WarehouseLoadInCopyWith<_$_WarehouseLoadIn> get copyWith =>
      __$$_WarehouseLoadInCopyWithImpl<_$_WarehouseLoadIn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WarehouseLoadInToJson(
      this,
    );
  }
}

abstract class _WarehouseLoadIn implements WarehouseLoadIn {
  const factory _WarehouseLoadIn(
      {final String? id,
      final String? loadInId,
      required final String warehouseId,
      required final String vehicleNumber,
      required final String invoiceNumber,
      required final DateTime dateTime,
      required final List<Product> products}) = _$_WarehouseLoadIn;

  factory _WarehouseLoadIn.fromJson(Map<String, dynamic> json) =
      _$_WarehouseLoadIn.fromJson;

  @override
  String? get id;
  @override
  String? get loadInId;
  @override
  String get warehouseId;
  @override
  String get vehicleNumber;
  @override
  String get invoiceNumber;
  @override
  DateTime get dateTime;
  @override
  List<Product> get products;
  @override
  @JsonKey(ignore: true)
  _$$_WarehouseLoadInCopyWith<_$_WarehouseLoadIn> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get productId => throw _privateConstructorUsedError;
  int get quantityFull => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({String productId, int quantityFull});
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
    Object? quantityFull = null,
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
  $Res call({String productId, int quantityFull});
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
    Object? quantityFull = null,
  }) {
    return _then(_$_Product(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantityFull: null == quantityFull
          ? _value.quantityFull
          : quantityFull // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product({required this.productId, required this.quantityFull});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String productId;
  @override
  final int quantityFull;

  @override
  String toString() {
    return 'Product(productId: $productId, quantityFull: $quantityFull)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantityFull, quantityFull) ||
                other.quantityFull == quantityFull));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantityFull);

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
      required final int quantityFull}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get productId;
  @override
  int get quantityFull;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}