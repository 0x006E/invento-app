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
    required List<LoadOutProduct> products,
    required String ervnumber,
  }) = _WarehouseLoadOut;

  factory WarehouseLoadOut.fromJson(Map<String, dynamic> json) =>
      _$WarehouseLoadOutFromJson(json);
}

@freezed
class LoadOutProduct with _$LoadOutProduct {
  const factory LoadOutProduct({
    required String productId,
    required int quantity,
  }) = _LoadOutProduct;

  factory LoadOutProduct.fromJson(Map<String, dynamic> json) =>
      _$LoadOutProductFromJson(json);
}
