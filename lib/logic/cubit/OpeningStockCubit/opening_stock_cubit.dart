import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/OpeningStock/opening_stock.dart';
import 'package:invento/data/repositories/opening_stock_repository.dart';
import 'package:invento/injection.dart';

part 'opening_stock_cubit.freezed.dart';
part 'opening_stock_state.dart';

class OpeningStockCubit extends Cubit<OpeningStockState> {
  final OpeningStockRepository openingStockRepository;
  final String partyId = "51d5bb6c-34b9-4f43-917c-6309456521f4";

  OpeningStockCubit({required this.openingStockRepository})
      : super(const OpeningStockState.loading());

  void fetch() async {
    logger.d("fetch() called", partyId);
    var repositoryResponse = await openingStockRepository.getByPartyId(partyId);

    repositoryResponse.fold(
      (err) async {
        if (err.statusCode == 404) {
          emit(
            OpeningStockState.loaded(
              openingStock: OpeningStock(items: [], partyId: partyId),
              status: "No existing opening stock found for this user",
            ),
          );
        } else {
          emit(
            OpeningStockState.error(
              errorMessage: err.message,
              errorCode: err.statusCode,
            ),
          );
        }
      },
      (response) => emit(
        OpeningStockState.loaded(openingStock: response),
      ),
    );
  }

  Future<void> addItem({
    required String productId,
    required int quantityFull,
    required int quantityEmpty,
    required int quantityDefective,
  }) async {
    var item = Item(
      productId: productId,
      quantityDefective: quantityDefective,
      quantityEmpty: quantityEmpty,
      quantityFull: quantityFull,
    );
    await state.maybeWhen(loaded: (openingStock, status, isError) async {
      Either<DataSourceError, OpeningStock> response;
      if (openingStock.id == null) {
        response = await openingStockRepository.create(
          OpeningStock(items: [item], partyId: partyId),
        );
      } else {
        response = await openingStockRepository.update(
          OpeningStock(
              openingStockId: openingStock.id,
              items: [...openingStock.items, item]),
        );
      }
      response.fold((err) {
        emit(
          OpeningStockState.loaded(
              openingStock: openingStock, status: err.message, isError: true),
        );
      }, (response) {
        emit(
          OpeningStockState.loaded(
              openingStock: response, status: "Item added"),
        );
      });
    }, orElse: () {
      logger.e("Recall fetch, $state");
      fetch();
    });
  }

  Future<void> updateItem({
    required String productId,
    required int quantityFull,
    required int quantityEmpty,
    required int quantityDefective,
  }) async {
    var item = Item(
      productId: productId,
      quantityDefective: quantityDefective,
      quantityEmpty: quantityEmpty,
      quantityFull: quantityFull,
    );
    await state.maybeWhen(loaded: (openingStock, status, isError) async {
      Either<DataSourceError, OpeningStock> response;
      var currentItems = [...openingStock.items];
      try {
        var index = currentItems
            .indexWhere((element) => element.productId == productId);
        currentItems[index] = item;
        logger.d("Current Items", currentItems);
        response = await openingStockRepository.update(
          OpeningStock(
              openingStockId: openingStock.id, items: [...currentItems, item]),
        );
        response.fold((err) {
          emit(
            OpeningStockState.loaded(
                openingStock: openingStock, status: err.message, isError: true),
          );
        }, (response) {
          emit(
            OpeningStockState.loaded(
                openingStock: response, status: "Item updated"),
          );
        });
      } on StateError catch (_) {
        emit(
          OpeningStockState.loaded(
              openingStock: openingStock,
              status: "Cannot find product with id",
              isError: true),
        );
      }
    }, orElse: () {
      logger.e("Recall fetch, $state");
      fetch();
    });
  }

  Future<void> deleteItem({
    required String productId,
  }) async {
    await state.maybeWhen(loaded: (openingStock, status, isError) async {
      var currentItems = [...openingStock.items];
      try {
        currentItems.removeWhere((element) => element.productId == productId);
        logger.d(currentItems);
        var response = await openingStockRepository.update(
          OpeningStock(openingStockId: openingStock.id, items: currentItems),
        );
        response.fold(
          (err) {
            emit(
              OpeningStockState.loaded(
                  openingStock: openingStock,
                  status: err.message,
                  isError: true),
            );
          },
          (response) {
            emit(
              OpeningStockState.loaded(
                  openingStock: response, status: "Item added"),
            );
          },
        );
      } on StateError catch (_) {
        emit(
          OpeningStockState.loaded(
              openingStock: openingStock,
              status: "Cannot find product with id",
              isError: true),
        );
      }
    }, orElse: () {
      logger.e("Recall fetch, $state");
      fetch();
    });
  }

// @override
// void onChange(Change<OpeningStockState> change) {
//   super.onChange(change);
//   logger.d(change.toString());
//   logger.d(change.currentState.toString());
//   logger.d(change.nextState.toString());
// }
}
