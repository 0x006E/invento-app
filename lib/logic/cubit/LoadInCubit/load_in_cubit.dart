import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/WarehouseLoadIn/warehouse_load_in.dart';
import 'package:invento/data/repositories/warehouse_load_in_repository.dart';
import 'package:invento/injection.dart';

part 'load_in_cubit.freezed.dart';
part 'load_in_state.dart';

class LoadInCubit extends Cubit<LoadInState> {
  final WarehouseLoadInRepository loadInRepository;
  final warehouseId = '66f7b5ce-1bf9-4d15-8373-498560ffa024';

  LoadInCubit({required this.loadInRepository})
      : super(const LoadInState.loading());

  void fetch() async {
    var repositoryResponse = await loadInRepository.getPage(size: 10, page: 1);
    logger.d("fetch() called - warehouse loadin");
    repositoryResponse.fold(
      (err) async {
        emit(
          LoadInState.error(
            errorMessage: err.message,
            errorCode: err.statusCode,
          ),
        );
      },
      (response) => emit(
        LoadInState.loaded(loadIns: response.content as List<WarehouseLoadIn>),
      ),
    );
  }

  Future<void> addItem({
    required List<LoadInProduct> products,
    required String vehicleNumber,
    required String invoiceNumber,
  }) async {
    await state.maybeWhen(loaded: (loadIn, status, isError) async {
      Either<DataSourceError, WarehouseLoadIn> response;
      response = await loadInRepository.create(
        WarehouseLoadIn(
            warehouseId: warehouseId,
            vehicleNumber: vehicleNumber,
            invoiceNumber: invoiceNumber,
            dateTime: DateTime.now(),
            products: products),
      );
      response.fold((err) {
        emit(
          LoadInState.loaded(
              status: err.message, isError: true, loadIns: loadIn),
        );
      }, (response) {
        emit(
          LoadInState.loaded(
              loadIns: [...loadIn, response], status: "Item added"),
        );
      });
    }, orElse: () {
      logger.e("Recall fetch, $state");
      fetch();
    });
  }

  Future<void> updateItem({
    required String loadInId,
    required List<LoadInProduct> products,
    required String vehicleNumber,
    required String invoiceNumber,
    required DateTime dateTime,
  }) async {
    await state.maybeWhen(loaded: (loadIn, status, isError) async {
      Either<DataSourceError, WarehouseLoadIn> response;
      response = await loadInRepository.update(
        WarehouseLoadIn(
            warehouseId: null,
            loadInId: loadInId,
            vehicleNumber: vehicleNumber,
            invoiceNumber: invoiceNumber,
            dateTime: dateTime,
            products: products),
      );
      response.fold((err) {
        emit(
          LoadInState.loaded(
              status: err.message, isError: true, loadIns: loadIn),
        );
      }, (response) {
        var currentItems = [...loadIn];
        var index = currentItems.indexWhere((item) => item.id == loadInId);
        currentItems[index] = response;
        emit(
          LoadInState.loaded(loadIns: currentItems, status: "Item updated"),
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
  //         LoadIn(
  //             loadInId: loadIn.id, items: currentItems),
  //       );
  //       response.fold(
  //         (err) {
  //           emit(
  //             LoadInState.loaded(
  //                 loadIn: loadIn,
  //                 status: err.message,
  //                 isError: true),
  //           );
  //         },
  //         (response) {
  //           emit(
  //             LoadInState.loaded(
  //                 loadIn: response, status: "Item added"),
  //           );
  //         },
  //       );
  //     } on StateError catch (_) {
  //       emit(
  //         LoadInState.loaded(
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
  void onChange(Change<LoadInState> change) {
    super.onChange(change);
    logger.d(change.toString());
    logger.d(change.currentState.toString());
    logger.d(change.nextState.toString());
  }
}
