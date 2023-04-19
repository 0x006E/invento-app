import 'package:flutter/material.dart';

class OpeningStockCard extends StatelessWidget {
  const OpeningStockCard({
    Key? key,
    required this.productName,
    required this.fullCount,
    required this.emptyCount,
    required this.defectiveCount,
    this.onDelete,
    this.onEdit,
  }) : super(key: key);

  final String productName;
  final void Function()? onDelete;
  final void Function()? onEdit;
  final int fullCount;
  final int emptyCount;
  final int defectiveCount;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.black, //<-- SEE HERE
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  productName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: onEdit,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: const Icon(
                        Icons.edit_rounded,
                        size: 18,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: onDelete,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: const Icon(
                        Icons.delete,
                        size: 18,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Flex(
                direction: Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Full",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        fullCount.toString(),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Empty",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        emptyCount.toString(),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Defective",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        defectiveCount.toString(),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
