import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invento/presentation/components/modal.dart';
import 'package:invento/presentation/components/openingstock_card.dart';
import 'package:invento/presentation/components/openingstock_form.dart';

class OpeningStockPage extends StatelessWidget {
  const OpeningStockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  FaIcon(
                    FontAwesomeIcons.plus,
                    size: 18,
                  ),
                  SizedBox(width: 8),
                  Text("Add new")
                ],
              ),
              onPressed: () {
                openModalBottomSheet(OpeningStockForm(), context);
              },
            ),
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: const [
                OpeningStockCard(
                  fullCount: 0,
                  emptyCount: 10,
                  defectiveCount: 20,
                  productName: '25KG Cylinder',
                ),
                OpeningStockCard(
                  fullCount: 0,
                  emptyCount: 23,
                  defectiveCount: 46,
                  productName: '15KG Cylinder',
                ),
                OpeningStockCard(
                  fullCount: 100,
                  emptyCount: 10,
                  defectiveCount: 15,
                  productName: '35KG Cylinder',
                ),
              ],
            )
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
    );
  }
}
