// To parse this JSON data, do
//
//     final giveStock = giveStockFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'give_stock.freezed.dart';
part 'give_stock.g.dart';

@freezed
class GiveStock with _$GiveStock {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory GiveStock({
    String? id,
    String? giveId,
    required List<Item> items,
    String? fromId,
    String? fromType,
    required String toId,
    required String toType,
    DateTime? dateTime,
  }) = _GiveStock;

  factory GiveStock.fromJson(Map<String, dynamic> json) =>
      _$GiveStockFromJson(json);
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
