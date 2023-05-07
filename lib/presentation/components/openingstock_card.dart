import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletons/skeletons.dart';

import '../../logic/cubit/ProductCubit/product_cubit.dart';

class OpeningStockCard extends StatelessWidget {
  const OpeningStockCard({
    Key? key,
    required this.productId,
    required this.fullCount,
    required this.emptyCount,
    required this.defectiveCount,
    this.onDelete,
    this.onEdit,
  }) : super(key: key);

  final String productId;
  final void Function()? onDelete;
  final void Function()? onEdit;
  final int fullCount;
  final int emptyCount;
  final int defectiveCount;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
      return state.when(
          loading: _skeletonCard,
          loaded: (products) {
            try {
              var productName = products
                  .firstWhere(
                    (element) => element.id == productId,
                  )
                  .name;
              return _loadedCard(
                  productName: productName,
                  fullCount: fullCount,
                  emptyCount: emptyCount,
                  defectiveCount: defectiveCount);
            } catch (err) {
              return Flushbar(
                title: 'Error',
                message: 'Cannot find product',
                icon: Icon(Icons.error_outline, color: Colors.white),
                backgroundColor: Colors.red,
                duration: Duration(seconds: 3),
                leftBarIndicatorColor: Colors.red,
                isDismissible: true,
                dismissDirection: FlushbarDismissDirection.HORIZONTAL,
              )..show(context);
            }
          },
          error: (message, code) => Flushbar(
                title: 'Error',
                message: '$code - $message',
                icon: Icon(Icons.error_outline, color: Colors.white),
                backgroundColor: Colors.red,
                duration: Duration(seconds: 3),
                leftBarIndicatorColor: Colors.red,
                isDismissible: true,
                dismissDirection: FlushbarDismissDirection.HORIZONTAL,
              )..show(context));
    });
  }

  Widget _loadedCard(
      {required String productName,
      required int fullCount,
      required int emptyCount,
      required int defectiveCount}) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(0.0, -7.0, 0.0),
                        child: Text(
                          "Product",
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ),
                    ],
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

  Widget _skeletonCard() {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.black,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SkeletonLine(),
                      Text(
                        "Product",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text(
                      "Full",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 4),
                    SizedBox(width: 16, child: SkeletonLine()),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "Empty",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 4),
                    SizedBox(width: 16, child: SkeletonLine()),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      "Defective",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 4),
                    SizedBox(width: 16, child: SkeletonLine()),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
