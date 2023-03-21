import 'package:flutter/material.dart';
import 'package:invento/components/appbar.dart';
import 'package:invento/screens/openingstock.dart';

import '../components/modal.dart';
import '../components/openingstockform.dart';

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
        body: const Padding(
          padding: EdgeInsets.all(32.0),
          child: TabBarView(
            children: [
              OpeningStockPage(),
              Center(child: Text('Content of Tab Two')),
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
