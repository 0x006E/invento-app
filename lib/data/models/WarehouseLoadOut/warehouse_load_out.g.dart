// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_load_out.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WarehouseLoadOut _$$_WarehouseLoadOutFromJson(Map<String, dynamic> json) =>
    _$_WarehouseLoadOut(
      id: json['id'] as String?,
      loadOutId: json['loadOutId'] as String?,
      warehouseId: json['warehouseId'] as String?,
      vehicleNumber: json['vehicleNumber'] as String,
      imageUrl: json['imageUrl'] as String?,
      dateTime: DateTime.parse(json['dateTime'] as String),
      products: (json['products'] as List<dynamic>)
          .map((e) => LoadOutProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      ervnumber: json['ervnumber'] as String,
    );

Map<String, dynamic> _$$_WarehouseLoadOutToJson(_$_WarehouseLoadOut instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('loadOutId', instance.loadOutId);
  writeNotNull('warehouseId', instance.warehouseId);
  val['vehicleNumber'] = instance.vehicleNumber;
  writeNotNull('imageUrl', instance.imageUrl);
  val['dateTime'] = instance.dateTime.toIso8601String();
  val['products'] = instance.products.map((e) => e.toJson()).toList();
  val['ervnumber'] = instance.ervnumber;
  return val;
}

_$_LoadOutProduct _$$_LoadOutProductFromJson(Map<String, dynamic> json) =>
    _$_LoadOutProduct(
      productId: json['productId'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_LoadOutProductToJson(_$_LoadOutProduct instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
    };
