// To parse this JSON data, do
//
//     final takeStock = takeStockFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.freezed.dart';
part 'stock.g.dart';

@freezed
class Stock with _$Stock {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory Stock({
    String? id,
    String? takeId,
    String? giveId,
    required List<Item> items,
    String? fromId,
    String? fromType,
    String? toId,
    String? toType,
    DateTime? dateTime,
  }) = _Stock;

  factory Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    required String productId,
    required int quantityFull,
    required int quantityEmpty,
    required int quantityDefective,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
