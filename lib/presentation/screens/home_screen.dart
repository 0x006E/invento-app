import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/counter_cubit.dart';
import 'package:invento/presentation/components/appbar.dart';
import 'package:invento/presentation/components/modal.dart';
import 'package:invento/presentation/components/openingstock_form.dart';
import 'package:invento/presentation/screens/counter_screen.dart';
import 'package:invento/presentation/screens/loadin_screen.dart';
import 'package:invento/presentation/screens/openingstock_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: CustomAppBar.length,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: TabBarView(
            children: [
              OpeningStockPage(),
              BlocProvider(
                create: (context) => CounterCubit(),
                child: CounterPage(),
              ),
              Center(child: Text('Content of Tab Three')),
              LoadInScreen(),
              Center(child: Text('Content of Tab Five')),
              Center(child: Text('Content of Tab Six')),
              Center(child: Text('Content of Tab Seven')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            openModalBottomSheet(OpeningStockForm(), context);
          },
          label: const Text("Update"),
          icon: const Icon(Icons.send),
        ),
      ),
    );
  }
}
