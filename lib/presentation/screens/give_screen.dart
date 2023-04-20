import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:invento/presentation/components/modal.dart';
import 'package:invento/presentation/components/stock_card.dart';
import 'package:invento/presentation/components/stock_form.dart';

class GiveScreen extends StatefulWidget {
  const GiveScreen({Key? key}) : super(key: key);

  @override
  State<GiveScreen> createState() => _GiveScreenState();
}

class _GiveScreenState extends State<GiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            StockCard(
              warehouseName: "Warehouse 1",
              dateTime: DateTime.now(),
              products: ['', ''],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          openModalBottomSheet(
            BlocProvider(
              create: (_) => GenericFormStepperCubit(),
              child: StockForm(),
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
