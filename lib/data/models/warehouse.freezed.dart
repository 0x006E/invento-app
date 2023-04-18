// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Warehouse _$WarehouseFromJson(Map<String, dynamic> json) {
  return _Warehouse.fromJson(json);
}

/// @nodoc
mixin _$Warehouse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  AddressBean? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'stockId')
  String? get stockId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarehouseCopyWith<Warehouse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseCopyWith<$Res> {
  factory $WarehouseCopyWith(Warehouse value, $Res Function(Warehouse) then) =
      _$WarehouseCopyWithImpl<$Res, Warehouse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'address') AddressBean? address,
      @JsonKey(name: 'stockId') String? stockId});

  $AddressBeanCopyWith<$Res>? get address;
}

/// @nodoc
class _$WarehouseCopyWithImpl<$Res, $Val extends Warehouse>
    implements $WarehouseCopyWith<$Res> {
  _$WarehouseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? stockId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressBean?,
      stockId: freezed == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressBeanCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressBeanCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WarehouseCopyWith<$Res> implements $WarehouseCopyWith<$Res> {
  factory _$$_WarehouseCopyWith(
          _$_Warehouse value, $Res Function(_$_Warehouse) then) =
      __$$_WarehouseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'address') AddressBean? address,
      @JsonKey(name: 'stockId') String? stockId});

  @override
  $AddressBeanCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_WarehouseCopyWithImpl<$Res>
    extends _$WarehouseCopyWithImpl<$Res, _$_Warehouse>
    implements _$$_WarehouseCopyWith<$Res> {
  __$$_WarehouseCopyWithImpl(
      _$_Warehouse _value, $Res Function(_$_Warehouse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? stockId = freezed,
  }) {
    return _then(_$_Warehouse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressBean?,
      stockId: freezed == stockId
          ? _value.stockId
          : stockId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Warehouse implements _Warehouse {
  const _$_Warehouse(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'stockId') this.stockId});

  factory _$_Warehouse.fromJson(Map<String, dynamic> json) =>
      _$$_WarehouseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'address')
  final AddressBean? address;
  @override
  @JsonKey(name: 'stockId')
  final String? stockId;

  @override
  String toString() {
    return 'Warehouse(id: $id, name: $name, address: $address, stockId: $stockId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Warehouse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.stockId, stockId) || other.stockId == stockId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, stockId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WarehouseCopyWith<_$_Warehouse> get copyWith =>
      __$$_WarehouseCopyWithImpl<_$_Warehouse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WarehouseToJson(
      this,
    );
  }
}

abstract class _Warehouse implements Warehouse {
  const factory _Warehouse(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'address') final AddressBean? address,
      @JsonKey(name: 'stockId') final String? stockId}) = _$_Warehouse;

  factory _Warehouse.fromJson(Map<String, dynamic> json) =
      _$_Warehouse.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'address')
  AddressBean? get address;
  @override
  @JsonKey(name: 'stockId')
  String? get stockId;
  @override
  @JsonKey(ignore: true)
  _$$_WarehouseCopyWith<_$_Warehouse> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressBean _$AddressBeanFromJson(Map<String, dynamic> json) {
  return _AddressBean.fromJson(json);
}

/// @nodoc
mixin _$AddressBean {
  @JsonKey(name: 'addressLine1')
  String? get addressLine1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'addressLine2')
  String? get addressLine2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'pincode')
  String? get pincode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressBeanCopyWith<AddressBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressBeanCopyWith<$Res> {
  factory $AddressBeanCopyWith(
          AddressBean value, $Res Function(AddressBean) then) =
      _$AddressBeanCopyWithImpl<$Res, AddressBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'addressLine1') String? addressLine1,
      @JsonKey(name: 'addressLine2') String? addressLine2,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'pincode') String? pincode});
}

/// @nodoc
class _$AddressBeanCopyWithImpl<$Res, $Val extends AddressBean>
    implements $AddressBeanCopyWith<$Res> {
  _$AddressBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_value.copyWith(
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressBeanCopyWith<$Res>
    implements $AddressBeanCopyWith<$Res> {
  factory _$$_AddressBeanCopyWith(
          _$_AddressBean value, $Res Function(_$_AddressBean) then) =
      __$$_AddressBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'addressLine1') String? addressLine1,
      @JsonKey(name: 'addressLine2') String? addressLine2,
      @JsonKey(name: 'city') String? city,
      @JsonKey(name: 'state') String? state,
      @JsonKey(name: 'pincode') String? pincode});
}

/// @nodoc
class __$$_AddressBeanCopyWithImpl<$Res>
    extends _$AddressBeanCopyWithImpl<$Res, _$_AddressBean>
    implements _$$_AddressBeanCopyWith<$Res> {
  __$$_AddressBeanCopyWithImpl(
      _$_AddressBean _value, $Res Function(_$_AddressBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pincode = freezed,
  }) {
    return _then(_$_AddressBean(
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pincode: freezed == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressBean implements _AddressBean {
  const _$_AddressBean(
      {@JsonKey(name: 'addressLine1') this.addressLine1,
      @JsonKey(name: 'addressLine2') this.addressLine2,
      @JsonKey(name: 'city') this.city,
      @JsonKey(name: 'state') this.state,
      @JsonKey(name: 'pincode') this.pincode});

  factory _$_AddressBean.fromJson(Map<String, dynamic> json) =>
      _$$_AddressBeanFromJson(json);

  @override
  @JsonKey(name: 'addressLine1')
  final String? addressLine1;
  @override
  @JsonKey(name: 'addressLine2')
  final String? addressLine2;
  @override
  @JsonKey(name: 'city')
  final String? city;
  @override
  @JsonKey(name: 'state')
  final String? state;
  @override
  @JsonKey(name: 'pincode')
  final String? pincode;

  @override
  String toString() {
    return 'AddressBean(addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, state: $state, pincode: $pincode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressBean &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pincode, pincode) || other.pincode == pincode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, addressLine1, addressLine2, city, state, pincode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressBeanCopyWith<_$_AddressBean> get copyWith =>
      __$$_AddressBeanCopyWithImpl<_$_AddressBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressBeanToJson(
      this,
    );
  }
}

abstract class _AddressBean implements AddressBean {
  const factory _AddressBean(
      {@JsonKey(name: 'addressLine1') final String? addressLine1,
      @JsonKey(name: 'addressLine2') final String? addressLine2,
      @JsonKey(name: 'city') final String? city,
      @JsonKey(name: 'state') final String? state,
      @JsonKey(name: 'pincode') final String? pincode}) = _$_AddressBean;

  factory _AddressBean.fromJson(Map<String, dynamic> json) =
      _$_AddressBean.fromJson;

  @override
  @JsonKey(name: 'addressLine1')
  String? get addressLine1;
  @override
  @JsonKey(name: 'addressLine2')
  String? get addressLine2;
  @override
  @JsonKey(name: 'city')
  String? get city;
  @override
  @JsonKey(name: 'state')
  String? get state;
  @override
  @JsonKey(name: 'pincode')
  String? get pincode;
  @override
  @JsonKey(ignore: true)
  _$$_AddressBeanCopyWith<_$_AddressBean> get copyWith =>
      throw _privateConstructorUsedError;
}
