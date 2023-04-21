// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stock _$$_StockFromJson(Map<String, dynamic> json) => _$_Stock(
      id: json['id'] as String?,
      takeId: json['takeId'] as String?,
      giveId: json['giveId'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      fromId: json['fromId'] as String?,
      fromType: json['fromType'] as String?,
      toId: json['toId'] as String?,
      toType: json['toType'] as String?,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$_StockToJson(_$_Stock instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('takeId', instance.takeId);
  writeNotNull('giveId', instance.giveId);
  val['items'] = instance.items.map((e) => e.toJson()).toList();
  writeNotNull('fromId', instance.fromId);
  writeNotNull('fromType', instance.fromType);
  writeNotNull('toId', instance.toId);
  writeNotNull('toType', instance.toType);
  writeNotNull('dateTime', instance.dateTime?.toIso8601String());
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
