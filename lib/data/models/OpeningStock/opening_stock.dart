import 'package:freezed_annotation/freezed_annotation.dart';

part 'opening_stock.freezed.dart';
part 'opening_stock.g.dart';

@freezed
class OpeningStock with _$OpeningStock {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory OpeningStock({
    String? id,
    String? openingStockId,
    String? partyId,
    String? partyType,
    required List<Item> items,
    String? dayEndId,
  }) = _OpeningStock;

  factory OpeningStock.fromJson(Map<String, dynamic> json) =>
      _$OpeningStockFromJson(json);
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
