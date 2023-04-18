// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Warehouse _$$_WarehouseFromJson(Map<String, dynamic> json) => _$_Warehouse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      address: json['address'] == null
          ? null
          : AddressBean.fromJson(json['address'] as Map<String, dynamic>),
      stockId: json['stockId'] as String?,
    );

Map<String, dynamic> _$$_WarehouseToJson(_$_Warehouse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'stockId': instance.stockId,
    };

_$_AddressBean _$$_AddressBeanFromJson(Map<String, dynamic> json) =>
    _$_AddressBean(
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pincode: json['pincode'] as String?,
    );

Map<String, dynamic> _$$_AddressBeanToJson(_$_AddressBean instance) =>
    <String, dynamic>{
      'addressLine1': instance.addressLine1,
      'addressLine2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
    };
