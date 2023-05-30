part of 'loadout_form_cubit.dart';

enum Status { initial, loading, success, error }

class LoadOutFormState {
  final Status status;
  final String message;

  const LoadOutFormState({required this.status, required this.message});
}
