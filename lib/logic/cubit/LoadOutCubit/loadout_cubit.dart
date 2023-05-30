import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/WarehouseLoadOut/warehouse_load_out.dart';
import 'package:invento/data/repositories/warehouse_load_out_repository.dart';
import 'package:invento/injection.dart';

part 'loadout_cubit.freezed.dart';
part 'loadout_state.dart';

class LoadOutCubit extends Cubit<LoadOutState> {
  final WarehouseLoadOutRepository loadOutRepository;
  final warehouseId = '51d5bb6c-34b9-4f43-917c-6309456521f4';

  LoadOutCubit({required this.loadOutRepository})
      : super(const LoadOutState.loading());

  void fetch() async {
    var repositoryResponse = await loadOutRepository.getPage(size: 10, page: 1);
    logger.d("fetch() called - warehouse loadout");
    repositoryResponse.fold(
      (err) async {
        emit(
          LoadOutState.error(
            errorMessage: err.message,
            errorCode: err.statusCode,
          ),
        );
      },
      (response) => emit(
        LoadOutState.loaded(
            loadOuts: response.content as List<WarehouseLoadOut>),
      ),
    );
  }

  Future<void> addItem({
    required List<LoadOutProduct> products,
    required String vehicleNumber,
    required String ervnumber,
  }) async {
    await state.maybeWhen(loaded: (loadOut, status, isError) async {
      Either<DataSourceError, WarehouseLoadOut> response;
      response = await loadOutRepository.create(
        WarehouseLoadOut(
            warehouseId: warehouseId,
            vehicleNumber: vehicleNumber,
            ervnumber: ervnumber,
            dateTime: DateTime.now(),
            products: products),
      );
      response.fold((err) {
        emit(
          LoadOutState.loaded(
              status: err.message, isError: true, loadOuts: loadOut),
        );
      }, (response) {
        emit(
          LoadOutState.loaded(
              loadOuts: [...loadOut, response], status: "Item added"),
        );
      });
    }, orElse: () {
      logger.e("Recall fetch, $state");
      fetch();
    });
  }

  Future<void> updateItem({
    required String loadOutId,
    required List<LoadOutProduct> products,
    required String vehicleNumber,
    required String ervnumber,
    required DateTime dateTime,
  }) async {
    await state.maybeWhen(loaded: (loadOut, status, isError) async {
      Either<DataSourceError, WarehouseLoadOut> response;
      response = await loadOutRepository.update(
        WarehouseLoadOut(
            warehouseId: null,
            loadOutId: loadOutId,
            vehicleNumber: vehicleNumber,
            ervnumber: ervnumber,
            dateTime: dateTime,
            products: products),
      );
      response.fold((err) {
        emit(
          LoadOutState.loaded(
              status: err.message, isError: true, loadOuts: loadOut),
        );
      }, (response) {
        var currentItems = [...loadOut];
        var index = currentItems.indexWhere((item) => item.id == loadOutId);
        currentItems[index] = response;
        emit(
          LoadOutState.loaded(loadOuts: currentItems, status: "Item updated"),
        );
      });
    }, orElse: () {
      logger.e("Recall fetch, $state");
      fetch();
    });
  }

  // Future<void> deleteItem({
  //   required String productId,
  // }) async {
  //   await state.maybeWhen(loaded: (loadIn, status, isError) async {
  //     var currentItems = [...loadIn.items];
  //     try {
  //       currentItems.removeWhere((element) => element.productId == productId);
  //       logger.d(currentItems);
  //       var response = await loadInRepository.update(
  //         LoadOut(
  //             loadInId: loadIn.id, items: currentItems),
  //       );
  //       response.fold(
  //         (err) {
  //           emit(
  //             LoadOutState.loaded(
  //                 loadIn: loadIn,
  //                 status: err.message,
  //                 isError: true),
  //           );
  //         },
  //         (response) {
  //           emit(
  //             LoadOutState.loaded(
  //                 loadIn: response, status: "Item added"),
  //           );
  //         },
  //       );
  //     } on StateError catch (_) {
  //       emit(
  //         LoadOutState.loaded(
  //             loadIn: loadIn,
  //             status: "Cannot find product with id",
  //             isError: true),
  //       );
  //     }
  //   }, orElse: () {
  //     logger.e("Recall fetch, $state");
  //     fetch();
  //   });
  // }

  @override
  void onChange(Change<LoadOutState> change) {
    super.onChange(change);
    logger.d(change.toString());
    logger.d(change.currentState.toString());
    logger.d(change.nextState.toString());
  }
}
