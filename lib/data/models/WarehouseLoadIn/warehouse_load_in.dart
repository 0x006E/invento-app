import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse_load_in.freezed.dart';
part 'warehouse_load_in.g.dart';

@freezed
class WarehouseLoadIn with _$WarehouseLoadIn {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory WarehouseLoadIn({
    String? id,
    String? loadInId,
    required String? warehouseId,
    required String vehicleNumber,
    required String invoiceNumber,
    required DateTime dateTime,
    required List<LoadInProduct> products,
  }) = _WarehouseLoadIn;

  factory WarehouseLoadIn.fromJson(Map<String, dynamic> json) =>
      _$WarehouseLoadInFromJson(json);
}

@freezed
class LoadInProduct with _$LoadInProduct {
  const factory LoadInProduct({
    required String productId,
    required int quantity,
  }) = _LoadInProduct;

  factory LoadInProduct.fromJson(Map<String, dynamic> json) =>
      _$LoadInProductFromJson(json);
}
