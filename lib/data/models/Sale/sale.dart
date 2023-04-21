// To parse this JSON data, do
//
//     final sale = saleFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale.freezed.dart';
part 'sale.g.dart';

@freezed
class Sale with _$Sale {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory Sale({
    String? id,
    required DateTime dateTime,
    required String invoiceNumber,
    required String customerId,
    required String employeeId,
    required String fromId,
    required String fromType,
    int? retailSailPrice,
    required int discount,
    int? netAmount,
    required List<SaleItem> saleItems,
    bool? paid,
  }) = _Sale;

  factory Sale.fromJson(Map<String, dynamic> json) => _$SaleFromJson(json);
}

@freezed
class SaleItem with _$SaleItem {
  const factory SaleItem({
    required String productId,
    required int quantity,
  }) = _SaleItem;

  factory SaleItem.fromJson(Map<String, dynamic> json) =>
      _$SaleItemFromJson(json);
}
