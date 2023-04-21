import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_load_out.freezed.dart';
part 'warehouse_load_out.g.dart';

@freezed
class WarehouseLoadOut with _$WarehouseLoadOut {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory WarehouseLoadOut({
    String? id,
    String? loadOutId,
    String? warehouseId,
    required String vehicleNumber,
    String? imageUrl,
    required DateTime dateTime,
    required List<Product> products,
    required String ervnumber,
  }) = _WarehouseLoadOut;

  factory WarehouseLoadOut.fromJson(Map<String, dynamic> json) =>
      _$WarehouseLoadOutFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required String productId,
    required int quantity,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
