import 'package:flutter/material.dart';
import 'package:invento/presentation/components/appbar.dart';
import 'package:invento/presentation/screens/give_screen.dart';
import 'package:invento/presentation/screens/loadin_screen.dart';
import 'package:invento/presentation/screens/loadout_screen.dart';
import 'package:invento/presentation/screens/openingstock_screen.dart';
import 'package:invento/presentation/screens/sale_screen.dart';
import 'package:invento/presentation/screens/take_screen.dart';

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
            const TakeScreen(),
            const GiveScreen(),
            const SaleScreen(),
            const LoadInScreen(),
            const LoadOutScreen(),
            const Center(child: Text('Content of Tab Six')),
            const Center(child: Text('Content of Tab Seven')),
          ],
        ),
      ),
    );
  }
}
