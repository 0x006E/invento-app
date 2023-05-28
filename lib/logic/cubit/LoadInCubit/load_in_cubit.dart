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
  final warehouseId = 'cb3a954d-5e86-4c8c-9798-d82699eb86a2';

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

  // Future<void> updateItem({
  //   required String productId,
  //   required int quantityFull,
  //   required int quantityEmpty,
  //   required int quantityDefective,
  // }) async {
  //   var item = Item(
  //     productId: productId,
  //     quantityDefective: quantityDefective,
  //     quantityEmpty: quantityEmpty,
  //     quantityFull: quantityFull,
  //   );
  //   await state.maybeWhen(loaded: (loadIn, status, isError) async {
  //     Either<DataSourceError, LoadIn> response;
  //     var currentItems = [...loadIn.items];
  //     try {
  //       var index = currentItems
  //           .indexWhere((element) => element.productId == productId);
  //       currentItems[index] = item;
  //       logger.d("Current Items", currentItems);
  //       response = await loadInRepository.update(
  //         LoadIn(
  //             loadInId: loadIn.id,
  //             items: [...currentItems, item]),
  //       );
  //       response.fold((err) {
  //         emit(
  //           LoadInState.loaded(
  //               loadIn: loadIn,
  //               status: err.message,
  //               isError: true),
  //         );
  //       }, (response) {
  //         emit(
  //           LoadInState.loaded(
  //               loadIn: response, status: "Item updated"),
  //         );
  //       });
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
