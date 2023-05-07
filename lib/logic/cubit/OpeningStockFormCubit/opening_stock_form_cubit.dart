import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/injection.dart';
import 'package:invento/logic/cubit/OpeningStockCubit/opening_stock_cubit.dart';

part 'opening_stock_form_state.dart';

class OpeningStockFormCubit extends Cubit<OpeningStockFormState> {
  final OpeningStockCubit openingStockCubit;

  OpeningStockFormCubit({required this.openingStockCubit})
      : super(OpeningStockFormState(status: Status.initial, message: ""));

  void setStatus(Status status, String message) {
    emit(OpeningStockFormState(status: status, message: message));
  }

  void addItem(Map<String, dynamic> formValue) async {
    final String productId = formValue['productId'];
    final int quantityFull = formValue['quantityFull'];
    final int quantityEmpty = formValue['quantityEmpty'];
    final int quantityDefective = formValue['quantityDefective'];
    setStatus(Status.loading, "");
    await openingStockCubit.addItem(
        productId: productId,
        quantityFull: quantityFull,
        quantityEmpty: quantityEmpty,
        quantityDefective: quantityDefective);
    openingStockCubit.state.when(
        loading: () {},
        loaded: (_, status, isError) {
          if (!isError) {
            setStatus(Status.success, "Operation successful");
          } else {
            setStatus(Status.error, status!);
          }
        },
        error: (message, code) => setStatus(Status.error, message));
  }

  void updateItem(Map<String, dynamic> formValue) async {
    final String productId = formValue['productId'];
    final int quantityFull = formValue['quantityFull'];
    final int quantityEmpty = formValue['quantityEmpty'];
    final int quantityDefective = formValue['quantityDefective'];
    setStatus(Status.loading, "");
    await openingStockCubit.updateItem(
        productId: productId,
        quantityFull: quantityFull,
        quantityEmpty: quantityEmpty,
        quantityDefective: quantityDefective);
    openingStockCubit.state.when(
        loading: () {},
        loaded: (_, status, isError) {
          if (!isError) {
            setStatus(Status.success, "Operation successful");
          } else {
            setStatus(Status.error, status!);
          }
        },
        error: (message, code) => setStatus(Status.error, message));
  }

  @override
  void onChange(Change<OpeningStockFormState> change) {
    super.onChange(change);
    logger.d(change.toString());
    logger.d(change.currentState.status);
    logger.d(change.nextState.status);
  }
}
