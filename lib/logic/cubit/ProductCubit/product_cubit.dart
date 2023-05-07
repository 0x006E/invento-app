import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/data/models/Product/product.dart';
import 'package:invento/data/repositories/product_repository.dart';
import 'package:invento/injection.dart';

part 'product_cubit.freezed.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository productRepository;

  ProductCubit({required this.productRepository})
      : super(const ProductState.loading());

  void fetch() async {
    logger.d("fetch() called");
    emit(ProductStateLoading());
    var repositoryResponse = await productRepository.getAll();
    repositoryResponse.fold(
      (err) async {
        emit(
          ProductState.error(
            errorMessage: err.message,
            errorCode: err.statusCode,
          ),
        );
      },
      (response) => emit(
        ProductState.loaded(products: response),
      ),
    );
  }

  @override
  void onChange(Change<ProductState> change) {
    super.onChange(change);
    logger.d(change.toString());
    logger.d(change.currentState.toString());
    logger.d(change.nextState.toString());
  }
}
