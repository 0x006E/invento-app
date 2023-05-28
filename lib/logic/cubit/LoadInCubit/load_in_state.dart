part of 'load_in_cubit.dart';

@freezed
class LoadInState with _$LoadInState {
  const factory LoadInState.loading() = LoadInStateLoading;

  const factory LoadInState.loaded({
    required List<WarehouseLoadIn> loadIns,
    String? status,
    @Default(false) bool isError,
  }) = LoadInStateLoaded;

  const factory LoadInState.error({
    required String errorMessage,
    int? errorCode,
  }) = LoadInStateError;
}
