// To parse this JSON data, do
//
//     final takeStock = takeStockFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'take_stock.freezed.dart';
part 'take_stock.g.dart';

@freezed
class TakeStock with _$TakeStock {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory TakeStock({
    String? id,
    String? takeId,
    required List<Item> items,
    required String fromId,
    required String fromType,
    String? toId,
    String? toType,
    DateTime? dateTime,
  }) = _TakeStock;

  factory TakeStock.fromJson(Map<String, dynamic> json) =>
      _$TakeStockFromJson(json);
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
