// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpeningStock _$$_OpeningStockFromJson(Map<String, dynamic> json) =>
    _$_OpeningStock(
      id: json['id'] as String?,
      openingStockId: json['openingStockId'] as String?,
      partyId: json['partyId'] as String?,
      partyType: json['partyType'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      dayEndId: json['dayEndId'] as String?,
    );

Map<String, dynamic> _$$_OpeningStockToJson(_$_OpeningStock instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('openingStockId', instance.openingStockId);
  writeNotNull('partyId', instance.partyId);
  writeNotNull('partyType', instance.partyType);
  val['items'] = instance.items.map((e) => e.toJson()).toList();
  writeNotNull('dayEndId', instance.dayEndId);
  return val;
}

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      productId: json['productId'] as String,
      quantityFull: json['quantityFull'] as int,
      quantityEmpty: json['quantityEmpty'] as int,
      quantityDefective: json['quantityDefective'] as int,
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'productId': instance.productId,
      'quantityFull': instance.quantityFull,
      'quantityEmpty': instance.quantityEmpty,
      'quantityDefective': instance.quantityDefective,
    };
