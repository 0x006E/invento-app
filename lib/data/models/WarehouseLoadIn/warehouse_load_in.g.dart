// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_load_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WarehouseLoadIn _$$_WarehouseLoadInFromJson(Map<String, dynamic> json) =>
    _$_WarehouseLoadIn(
      id: json['id'] as String?,
      loadInId: json['loadInId'] as String?,
      warehouseId: json['warehouseId'] as String?,
      vehicleNumber: json['vehicleNumber'] as String,
      invoiceNumber: json['invoiceNumber'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      products: (json['products'] as List<dynamic>)
          .map((e) => LoadInProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WarehouseLoadInToJson(_$_WarehouseLoadIn instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('loadInId', instance.loadInId);
  writeNotNull('warehouseId', instance.warehouseId);
  val['vehicleNumber'] = instance.vehicleNumber;
  val['invoiceNumber'] = instance.invoiceNumber;
  val['dateTime'] = instance.dateTime.toIso8601String();
  val['products'] = instance.products.map((e) => e.toJson()).toList();
  return val;
}

_$_LoadInProduct _$$_LoadInProductFromJson(Map<String, dynamic> json) =>
    _$_LoadInProduct(
      productId: json['productId'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_LoadInProductToJson(_$_LoadInProduct instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
    };
