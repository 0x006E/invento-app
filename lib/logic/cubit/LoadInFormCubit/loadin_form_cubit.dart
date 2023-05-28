import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/data/models/WarehouseLoadIn/warehouse_load_in.dart';
import 'package:invento/injection.dart';
import 'package:invento/logic/cubit/LoadInCubit/load_in_cubit.dart';

part 'loadin_form_state.dart';

class LoadInFormCubit extends Cubit<LoadInFormState> {
  final LoadInCubit loadInCubit;

  LoadInFormCubit({required this.loadInCubit})
      : super(LoadInFormState(status: Status.initial, message: ""));

  void setStatus(Status status, String message) {
    emit(LoadInFormState(status: status, message: message));
  }

  void addItem({
    required String invoiceNumber,
    required String vehicleNumber,
    required List<LoadInProduct> products,
  }) async {
    setStatus(Status.loading, "");
    await loadInCubit.addItem(
        products: products,
        vehicleNumber: vehicleNumber,
        invoiceNumber: invoiceNumber);
    loadInCubit.state.when(
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
    // final String productId = formValue['productId'];
    // final int quantityFull = formValue['quantityFull'];
    // final int quantityEmpty = formValue['quantityEmpty'];
    // final int quantityDefective = formValue['quantityDefective'];
    setStatus(Status.loading, "");
    // await loadInCubit.updateItem(
    //     productId: productId,
    //     quantityFull: quantityFull,
    //     quantityEmpty: quantityEmpty,
    //     quantityDefective: quantityDefective);
    // loadInCubit.state.when(
    //     loading: () {},
    //     loaded: (_, status, isError) {
    //       if (!isError) {
    //         setStatus(Status.success, "Operation successful");
    //       } else {
    //         setStatus(Status.error, status!);
    //       }
    //     },
    //     error: (message, code) => setStatus(Status.error, message));
  }

  @override
  void onChange(Change<LoadInFormState> change) {
    super.onChange(change);
    logger.d(change.toString());
    logger.d(change.currentState.status);
    logger.d(change.nextState.status);
  }
}
