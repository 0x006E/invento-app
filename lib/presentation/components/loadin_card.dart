import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:invento/data/models/WarehouseLoadIn/warehouse_load_in.dart';

class LoadInCard extends StatelessWidget {
  const LoadInCard({
    Key? key,
    required this.vehicleNumber,
    required this.invoiceNumber,
    required this.dateTime,
    required this.products,
    this.onDelete,
    this.onEdit,
  }) : super(key: key);

  final String vehicleNumber;
  final String invoiceNumber;
  final DateTime dateTime;
  final List<LoadInProduct> products;

  final void Function()? onDelete;
  final void Function()? onEdit;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Vehicle No: ",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      vehicleNumber,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
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
                    if (onDelete != null) ...[
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
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Invoice No: ",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                Text(
                  invoiceNumber,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Date & Time: ",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                Text(
                  DateFormat('hh:ss a, dd MMM yyyy').format(dateTime),
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              "${products.length} product(s) was changed in this item. Click item to edit",
            )
          ],
        ),
      ),
    );
  }
}
