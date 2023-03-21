import 'package:flutter/material.dart';
import 'package:invento/components/modal.dart';

import '../components/openingstockform.dart';

class OpeningStockPage extends StatelessWidget {
  const OpeningStockPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('showModalBottomSheet'),
        onPressed: () {
          openModalBottomSheet(const OpeningStockForm(), context);
        },
      ),
    );
  }
}
