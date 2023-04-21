import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:invento/presentation/components/loadout_card.dart';
import 'package:invento/presentation/components/loadout_form.dart';
import 'package:invento/presentation/components/modal.dart';

class LoadOutScreen extends StatefulWidget {
  const LoadOutScreen({Key? key}) : super(key: key);

  @override
  State<LoadOutScreen> createState() => _LoadOutScreenState();
}

class _LoadOutScreenState extends State<LoadOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            LoadOutCard(
              vehicleNumber: "KL55BB5645",
              ervNumber: "248298428",
              products: const ['', ''],
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
              child: LoadOutForm(),
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
