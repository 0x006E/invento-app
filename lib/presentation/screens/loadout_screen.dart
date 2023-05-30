import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invento/data/models/WarehouseLoadOut/warehouse_load_out.dart';
import 'package:invento/logic/cubit/LoadOutCubit/loadout_cubit.dart';
import 'package:invento/logic/cubit/LoadOutFormCubit/loadout_form_cubit.dart';
import 'package:invento/logic/cubit/ProductCubit/product_cubit.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:invento/presentation/components/error_info.dart';
import 'package:invento/presentation/components/loadout_card.dart';
import 'package:invento/presentation/components/loadout_form.dart';
import 'package:invento/presentation/components/modal.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadOutScreen extends StatefulWidget {
  const LoadOutScreen({Key? key}) : super(key: key);

  @override
  State<LoadOutScreen> createState() => _LoadOutScreenState();
}

class _LoadOutScreenState extends State<LoadOutScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            BlocConsumer<LoadOutCubit, LoadOutState>(
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
                  loaded: (loadOuts, _, __) => Expanded(
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
                            openLoadOutForm(context);
                          },
                        ),
                        loadOuts.isEmpty
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
                                itemCount: loadOuts.length,
                                shrinkWrap: true,
                                itemBuilder:
                                    (BuildContext context, int index) =>
                                        LoadOutCard(
                                  onEdit: () {
                                    openLoadOutForm(
                                      context,
                                      isEdit: true,
                                      loadOutId: loadOuts[index].id,
                                      vehicleNumber:
                                          loadOuts[index].vehicleNumber,
                                      ervnumber: loadOuts[index].ervnumber,
                                      products: loadOuts[index].products,
                                      dateTime: loadOuts[index].dateTime,
                                    );
                                  },
                                  vehicleNumber: loadOuts[index].vehicleNumber,
                                  ervnumber: loadOuts[index].ervnumber,
                                  dateTime: loadOuts[index].dateTime,
                                  products: loadOuts[index].products,
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

  void openLoadOutForm(
    BuildContext context, {
    bool isEdit = false,
    String? loadOutId,
    String? vehicleNumber,
    String? ervnumber,
    List<LoadOutProduct>? products,
    DateTime? dateTime,
  }) {
    return openModalBottomSheet(
        MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: BlocProvider.of<ProductCubit>(context),
              ),
              BlocProvider.value(
                value: BlocProvider.of<LoadOutCubit>(context),
              ),
              BlocProvider(create: (context) => GenericFormStepperCubit()),
              BlocProvider(
                  create: (context) => LoadOutFormCubit(
                      loadOutCubit: BlocProvider.of<LoadOutCubit>(context)))
            ],
            child: LoadOutForm(
              isEdit: isEdit,
              loadOutId: loadOutId,
              vehicleNumber: vehicleNumber,
              ervnumber: ervnumber,
              products: products,
              dateTime: dateTime,
            )),
        context);
  }

  @override
  bool get wantKeepAlive => true;
}
