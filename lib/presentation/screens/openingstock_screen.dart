import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invento/presentation/components/modal.dart';
import 'package:invento/presentation/components/openingstock_form.dart';
import 'package:invento/presentation/components/openingstockcard.dart';

class OpeningStockPage extends StatelessWidget {
  const OpeningStockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
        children: [
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
    ]);
  }
}
