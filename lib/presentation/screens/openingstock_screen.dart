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
            BlocBuilder<OpeningStockCubit, OpeningStockState>(
              builder: (context, state) {
                return state.when(
                  loading: (_) => Expanded(
                    child: Center(
                      child: LoadingAnimationWidget.halfTriangleDot(
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ),
                  loaded: (openingStock, _) => Expanded(
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
                            openModalBottomSheet(
                                BlocProvider.value(
                                  value: BlocProvider.of<ProductCubit>(
                                      parentContext),
                                  child: OpeningStockForm(),
                                ),
                                parentContext);
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
                                    (BuildContext context, int? index) =>
                                        OpeningStockCard(
                                  fullCount: 0,
                                  emptyCount: 10,
                                  defectiveCount: 20,
                                  productName: '25KG Cylinder',
                                ),
                              ),
                      ],
                    ),
                  ),
                  error: (message, code, _) => Expanded(
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

  @override
  bool get wantKeepAlive => true;
}
