part of 'opening_stock_cubit.dart';

@freezed
class OpeningStockState with _$OpeningStockState {
  const factory OpeningStockState.loading() = OpeningStockStateLoading;

  const factory OpeningStockState.loaded({
    required OpeningStock openingStock,
    String? status,
    @Default(false) bool isError,
  }) = OpeningStockStateLoaded;

  const factory OpeningStockState.error({
    required String errorMessage,
    int? errorCode,
  }) = OpeningStockStateError;
}
