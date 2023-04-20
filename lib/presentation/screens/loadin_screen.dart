import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:invento/presentation/components/loadin_card.dart';
import 'package:invento/presentation/components/loadin_form.dart';
import 'package:invento/presentation/components/modal.dart';

class LoadInScreen extends StatefulWidget {
  const LoadInScreen({Key? key}) : super(key: key);

  @override
  State<LoadInScreen> createState() => _LoadInScreenState();
}

class _LoadInScreenState extends State<LoadInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            LoadInCard(
              vehicleNumber: "KL55BB5603",
              invoiceNumber: "248298428",
              products: ['', ''],
              dateTime: DateTime.now(),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          openModalBottomSheet(
            BlocProvider(
              create: (_) => GenericFormStepperCubit(),
              child: LoadInForm(),
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
