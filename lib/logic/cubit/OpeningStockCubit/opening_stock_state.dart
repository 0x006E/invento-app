part of 'opening_stock_cubit.dart';

@freezed
class OpeningStockState with _$OpeningStockState {
  const factory OpeningStockState.loading({
    @Default(false) bool initialFetch,
  }) = OpeningStockStateLoading;

  const factory OpeningStockState.loaded({
    required OpeningStock openingStock,
    @Default(false) bool initialFetch,
  }) = OpeningStockStateLoaded;

  const factory OpeningStockState.error({
    required String errorMessage,
    int? errorCode,
    @Default(false) bool initialFetch,
  }) = OpeningStockStateError;
}
