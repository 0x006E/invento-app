// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sale _$$_SaleFromJson(Map<String, dynamic> json) => _$_Sale(
      id: json['id'] as String?,
      dateTime: DateTime.parse(json['dateTime'] as String),
      invoiceNumber: json['invoiceNumber'] as String,
      customerId: json['customerId'] as String,
      employeeId: json['employeeId'] as String,
      fromId: json['fromId'] as String,
      fromType: json['fromType'] as String,
      retailSailPrice: json['retailSailPrice'] as int?,
      discount: json['discount'] as int,
      netAmount: json['netAmount'] as int?,
      saleItems: (json['saleItems'] as List<dynamic>)
          .map((e) => SaleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      paid: json['paid'] as bool?,
    );

Map<String, dynamic> _$$_SaleToJson(_$_Sale instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['dateTime'] = instance.dateTime.toIso8601String();
  val['invoiceNumber'] = instance.invoiceNumber;
  val['customerId'] = instance.customerId;
  val['employeeId'] = instance.employeeId;
  val['fromId'] = instance.fromId;
  val['fromType'] = instance.fromType;
  writeNotNull('retailSailPrice', instance.retailSailPrice);
  val['discount'] = instance.discount;
  writeNotNull('netAmount', instance.netAmount);
  val['saleItems'] = instance.saleItems.map((e) => e.toJson()).toList();
  writeNotNull('paid', instance.paid);
  return val;
}

_$_SaleItem _$$_SaleItemFromJson(Map<String, dynamic> json) => _$_SaleItem(
      productId: json['productId'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_SaleItemToJson(_$_SaleItem instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
    };
