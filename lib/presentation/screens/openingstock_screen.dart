import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invento/logic/cubit/OpeningStockCubit/opening_stock_cubit.dart';
import 'package:invento/logic/cubit/ProductCubit/product_cubit.dart';
import 'package:invento/presentation/components/error_info.dart';
import 'package:invento/presentation/components/modal.dart';
import 'package:invento/presentation/components/openingstock_card.dart';
import 'package:invento/presentation/components/openingstock_form.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class OpeningStockPage extends StatefulWidget {
  const OpeningStockPage({super.key});

  @override
  State<OpeningStockPage> createState() => _OpeningStockPageState();
}

class _OpeningStockPageState extends State<OpeningStockPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext parentContext) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            BlocConsumer<OpeningStockCubit, OpeningStockState>(
              listener: (context, state) => state.maybeWhen(
                  loaded: (_, status, __) => status != null
                      ? ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(status)))
                      : null,
                  orElse: () {
                    return null;
                  }),
              builder: (context, state) {
                return state.when(
                  loading: () => Expanded(
                    child: Center(
                      child: LoadingAnimationWidget.halfTriangleDot(
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ),
                  loaded: (openingStock, _, __) => Expanded(
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
                            openOpeningStockForm(context);
                          },
                        ),
                        openingStock.items.isEmpty
                            ? Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Nothing here...",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              )
                            : ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: openingStock.items.length,
                                shrinkWrap: true,
                                itemBuilder:
                                    (BuildContext context, int index) =>
                                        OpeningStockCard(
                                  fullCount:
                                      openingStock.items[index].quantityFull,
                                  emptyCount:
                                      openingStock.items[index].quantityEmpty,
                                  defectiveCount: openingStock
                                      .items[index].quantityDefective,
                                  productId:
                                      openingStock.items[index].productId,
                                  onDelete: () => context
                                      .read<OpeningStockCubit>()
                                      .deleteItem(
                                        productId:
                                            openingStock.items[index].productId,
                                      ),
                                  onEdit: () {
                                    openOpeningStockForm(
                                      context,
                                      isEdit: true,
                                      quantityFull: openingStock
                                          .items[index].quantityFull,
                                      quantityEmpty: openingStock
                                          .items[index].quantityEmpty,
                                      quantityDefective: openingStock
                                          .items[index].quantityDefective,
                                      productId:
                                          openingStock.items[index].productId,
                                    );
                                  },
                                ),
                              ),
                      ],
                    ),
                  ),
                  error: (message, code) => Expanded(
                    child: ErrorInfo(
                      errorMessage: message,
                      errorCode: code ?? 0,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void openOpeningStockForm(BuildContext context,
      {bool isEdit = false,
      String? productId,
      int? quantityFull,
      int? quantityEmpty,
      int? quantityDefective}) {
    return openModalBottomSheet(
        MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: BlocProvider.of<ProductCubit>(context),
              ),
              BlocProvider.value(
                value: BlocProvider.of<OpeningStockCubit>(context),
              ),
            ],
            child: OpeningStockForm(
              isEdit: isEdit,
              productId: productId,
              quantityDefective: quantityDefective,
              quantityEmpty: quantityEmpty,
              quantityFull: quantityFull,
            )),
        context);
  }

  @override
  bool get wantKeepAlive => true;
}
