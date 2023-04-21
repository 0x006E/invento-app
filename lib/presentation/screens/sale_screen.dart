import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:invento/presentation/components/modal.dart';
import 'package:invento/presentation/components/sale_card.dart';
import 'package:invento/presentation/components/sale_form.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({Key? key}) : super(key: key);

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            SaleCard(
              customerName: "Nithin",
              totalPrice: 18,
              totalQuantity: 18,
              dateTime: DateTime.now(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          openModalBottomSheet(
            BlocProvider(
              create: (_) => GenericFormStepperCubit(),
              child: SaleForm(),
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
