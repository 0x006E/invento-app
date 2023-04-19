import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/logic/cubit/counter_cubit.dart';
import 'package:invento/presentation/components/appbar.dart';
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
        body: TabBarView(
          children: [
            const OpeningStockPage(),
            BlocProvider(
              create: (context) => CounterCubit(),
              child: const CounterPage(),
            ),
            const Scaffold(body: Center(child: Text('Content of Tab Three'))),
            const LoadInScreen(),
            const Center(child: Text('Content of Tab Five')),
            const Center(child: Text('Content of Tab Six')),
            const Center(child: Text('Content of Tab Seven')),
          ],
        ),
      ),
    );
  }
}
