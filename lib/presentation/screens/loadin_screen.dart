import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
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
    return Column(
      children: [
        ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.add,
                size: 18,
              ),
              SizedBox(width: 8),
              Text("Add new")
            ],
          ),
          onPressed: () {
            openModalBottomSheet(
                BlocProvider(
                  create: (context) => GenericFormStepperCubit(),
                  child: LoadInForm(),
                ),
                context);
          },
        ),
      ],
    );
  }
}
