import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:invento/data/models/WarehouseLoadIn/warehouse_load_in.dart';
import 'package:invento/logic/cubit/LoadInCubit/load_in_cubit.dart';
import 'package:invento/logic/cubit/LoadInFormCubit/loadin_form_cubit.dart';
import 'package:invento/logic/cubit/ProductCubit/product_cubit.dart';
import 'package:invento/logic/cubit/generic_form_stepper_cubit.dart';
import 'package:invento/presentation/components/error_info.dart';
import 'package:invento/presentation/components/loadin_card.dart';
import 'package:invento/presentation/components/loadin_form.dart';
import 'package:invento/presentation/components/modal.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadInScreen extends StatefulWidget {
  const LoadInScreen({Key? key}) : super(key: key);

  @override
  State<LoadInScreen> createState() => _LoadInScreenState();
}

class _LoadInScreenState extends State<LoadInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          children: [
            BlocConsumer<LoadInCubit, LoadInState>(
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
                  loaded: (loadIns, _, __) => Expanded(
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
                            openLoadInForm(context);
                          },
                        ),
                        loadIns.isEmpty
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
                                itemCount: loadIns.length,
                                shrinkWrap: true,
                                itemBuilder:
                                    (BuildContext context, int index) =>
                                        LoadInCard(
                                  onEdit: () {
                                    openLoadInForm(
                                      context,
                                      isEdit: true,
                                      loadInId: loadIns[index].id,
                                      vehicleNumber:
                                          loadIns[index].vehicleNumber,
                                      invoiceNumber:
                                          loadIns[index].invoiceNumber,
                                      products: loadIns[index].products,
                                      dateTime: loadIns[index].dateTime,
                                    );
                                  },
                                  vehicleNumber: loadIns[index].vehicleNumber,
                                  invoiceNumber: loadIns[index].invoiceNumber,
                                  dateTime: loadIns[index].dateTime,
                                  products: loadIns[index].products,
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

  void openLoadInForm(
    BuildContext context, {
    bool isEdit = false,
    String? loadInId,
    String? vehicleNumber,
    String? invoiceNumber,
    List<LoadInProduct>? products,
    DateTime? dateTime,
  }) {
    return openModalBottomSheet(
        MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: BlocProvider.of<ProductCubit>(context),
              ),
              BlocProvider.value(
                value: BlocProvider.of<LoadInCubit>(context),
              ),
              BlocProvider(create: (context) => GenericFormStepperCubit()),
              BlocProvider(
                  create: (context) => LoadInFormCubit(
                      loadInCubit: BlocProvider.of<LoadInCubit>(context)))
            ],
            child: LoadInForm(
              isEdit: isEdit,
              loadInId: loadInId,
              vehicleNumber: vehicleNumber,
              invoiceNumber: invoiceNumber,
              products: products,
              dateTime: dateTime,
            )),
        context);
  }
}
