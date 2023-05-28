import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:invento/presentation/components/modal.dart';
import 'package:invento/presentation/components/receipt_card.dart';
import 'package:invento/presentation/components/receipt_form.dart';

class ReceiptScreen extends StatefulWidget {
  const ReceiptScreen({Key? key}) : super(key: key);

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            ReceiptCard(
              amount: 3000,
              dateTime: DateTime.now(),
              customerName: 'Customer 1',
              mode: 'UPI',
              saleItems: const [],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          openModalBottomSheet(
            BlocProvider(
              create: (_) => GenericFormStepperCubit(),
              child: ReceiptForm(),
            ),
            context,
          );
        },
        label: const Text("Add new"),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
