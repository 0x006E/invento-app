part of 'loadout_cubit.dart';

@freezed
class LoadOutState with _$LoadOutState {
  const factory LoadOutState.loading() = LoadOutStateLoading;

  const factory LoadOutState.loaded({
    required List<WarehouseLoadOut> loadOuts,
    String? status,
    @Default(false) bool isError,
  }) = LoadOutStateLoaded;

  const factory LoadOutState.error({
    required String errorMessage,
    int? errorCode,
  }) = LoadOutStateError;
}
