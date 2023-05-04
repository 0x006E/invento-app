import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/data/models/OpeningStock/opening_stock.dart';
import 'package:invento/data/repositories/opening_stock_repository.dart';
import 'package:invento/injection.dart';

part 'opening_stock_cubit.freezed.dart';
part 'opening_stock_state.dart';

class OpeningStockCubit extends Cubit<OpeningStockState> {
  final OpeningStockRepository openingStockRepository;
  final String partyId = "af2e6b16-1da0-4ad7-abd1-809d2e65392f";

  OpeningStockCubit({required this.openingStockRepository})
      : super(const OpeningStockState.loading(initialFetch: true));

  void fetch() async {
    logger.d("fetch() called");
    var repositoryResponse = await openingStockRepository.getByPartyId(partyId);

    repositoryResponse.fold(
      (err) async {
        if (err.statusCode == 404 && state.initialFetch) {
          emit(
            OpeningStockState.loaded(
                openingStock: OpeningStock(items: [], partyId: partyId),
                initialFetch: true),
          );
        } else {
          emit(
            OpeningStockState.error(
                errorMessage: err.message,
                errorCode: err.statusCode,
                initialFetch: false),
          );
        }
      },
      (response) => emit(
        OpeningStockState.loaded(openingStock: response, initialFetch: false),
      ),
    );
  }

  void updateItem(Item item) {}

  @override
  void onChange(Change<OpeningStockState> change) {
    super.onChange(change);
    logger.d(change.toString());
    logger.d(change.currentState.toString());
    logger.d(change.nextState.toString());
  }
}
