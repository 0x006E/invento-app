part of 'loadin_form_cubit.dart';

enum Status { initial, loading, success, error }

class LoadInFormState {
  final Status status;
  final String message;

  const LoadInFormState({required this.status, required this.message});
}
