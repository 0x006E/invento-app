import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/data/models/WarehouseLoadOut/warehouse_load_out.dart';
import 'package:invento/injection.dart';
import 'package:invento/logic/cubit/LoadOutCubit/loadout_cubit.dart';

part 'loadout_form_state.dart';

class LoadOutFormCubit extends Cubit<LoadOutFormState> {
  final LoadOutCubit loadOutCubit;

  LoadOutFormCubit({required this.loadOutCubit})
      : super(LoadOutFormState(status: Status.initial, message: ""));

  void setStatus(Status status, String message) {
    emit(LoadOutFormState(status: status, message: message));
  }

  void addItem({
    required String ervnumber,
    required String vehicleNumber,
    required List<LoadOutProduct> products,
  }) async {
    setStatus(Status.loading, "");
    await loadOutCubit.addItem(
        products: products, vehicleNumber: vehicleNumber, ervnumber: ervnumber);
    loadOutCubit.state.when(
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

  void updateItem({
    required String loadOutId,
    required String ervnumber,
    required String vehicleNumber,
    required List<LoadOutProduct> products,
    required DateTime dateTime,
  }) async {
    setStatus(Status.loading, "");
    await loadOutCubit.updateItem(
        loadOutId: loadOutId,
        products: products,
        ervnumber: ervnumber,
        vehicleNumber: vehicleNumber,
        dateTime: dateTime);
    loadOutCubit.state.when(
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
  void onChange(Change<LoadOutFormState> change) {
    super.onChange(change);
    logger.d(change.toString());
    logger.d(change.currentState.status);
    logger.d(change.nextState.status);
  }
}
