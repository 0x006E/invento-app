part of 'opening_stock_form_cubit.dart';

enum Status { initial, loading, success, error }

class OpeningStockFormState {
  final Status status;
  final String message;

  const OpeningStockFormState({required this.status, required this.message});
}
