import 'package:freezed_annotation/freezed_annotation.dart';

part 'warehouse.freezed.dart';
part 'warehouse.g.dart';

@freezed
class Warehouse with _$Warehouse {
  const factory Warehouse({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'address') AddressBean? address,
    @JsonKey(name: 'stockId') String? stockId,
  }) = _Warehouse;

  factory Warehouse.fromJson(Map<String, Object?> json) =>
      _$WarehouseFromJson(json);
}

@freezed
class AddressBean with _$AddressBean {
  const factory AddressBean({
    @JsonKey(name: 'addressLine1') String? addressLine1,
    @JsonKey(name: 'addressLine2') String? addressLine2,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'pincode') String? pincode,
  }) = _AddressBean;

  factory AddressBean.fromJson(Map<String, Object?> json) =>
      _$AddressBeanFromJson(json);
}
