part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.loading() = ProductStateLoading;

  const factory ProductState.loaded({required List<Product> products}) =
      ProductStateLoaded;

  const factory ProductState.error({
    required String errorMessage,
    int? errorCode,
  }) = ProductStateError;
}
