import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/counter_cubit.dart';
import 'package:invento/presentation/components/appbar.dart';
import 'package:invento/presentation/components/modal.dart';
import 'package:invento/presentation/components/openingstockform.dart';
import 'package:invento/presentation/screens/counterpage.dart';
import 'package:invento/presentation/screens/openingstock.dart';

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
          padding: EdgeInsets.all(32.0),
          child: TabBarView(
            children: [
              OpeningStockPage(),
              BlocProvider(
                create: (context) => CounterCubit(),
                child: CounterPage(),
              ),
              Center(child: Text('Content of Tab Three')),
              Center(child: Text('Content of Tab Four')),
              Center(child: Text('Content of Tab Five')),
              Center(child: Text('Content of Tab Six')),
              Center(child: Text('Content of Tab Seven')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            openModalBottomSheet(const OpeningStockForm(), context);
          },
          label: const Text("Add"),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
