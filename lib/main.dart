import 'package:flutter/material.dart';
import 'package:invento/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invento',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
        appBarTheme: const AppBarTheme(elevation: 0),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
