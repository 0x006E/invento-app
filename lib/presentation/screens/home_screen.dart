import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/data/providers/OpeningStockProvider/opening_stock_provider.dart';
import 'package:invento/data/providers/ProductProvider/product_provider.dart';
import 'package:invento/data/providers/WarehouseLoadInProvider/warehouse_load_in_provider.dart';
import 'package:invento/data/providers/WarehouseLoadOutProvider/warehouse_load_out_provider.dart';
import 'package:invento/data/repositories/opening_stock_repository.dart';
import 'package:invento/data/repositories/product_repository.dart';
import 'package:invento/data/repositories/warehouse_load_in_repository.dart';
import 'package:invento/data/repositories/warehouse_load_out_repository.dart';
import 'package:invento/injection.dart';
import 'package:invento/logic/cubit/LoadInCubit/load_in_cubit.dart';
import 'package:invento/logic/cubit/LoadOutCubit/loadout_cubit.dart';
import 'package:invento/logic/cubit/OpeningStockCubit/opening_stock_cubit.dart';
import 'package:invento/logic/cubit/ProductCubit/product_cubit.dart';
import 'package:invento/presentation/components/appbar.dart';
import 'package:invento/presentation/screens/give_screen.dart';
import 'package:invento/presentation/screens/loadin_screen.dart';
import 'package:invento/presentation/screens/loadout_screen.dart';
import 'package:invento/presentation/screens/openingstock_screen.dart';
import 'package:invento/presentation/screens/receipt_screen.dart';
import 'package:invento/presentation/screens/sale_screen.dart';
import 'package:invento/presentation/screens/take_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => OpeningStockRepository(
            remoteDataSource: getIt.get<OpeningStockProvider>(),
          ),
        ),
        RepositoryProvider(
            create: (context) => WarehouseLoadInRepository(
                  remoteDataSource: getIt.get<WarehouseLoadInProvider>(),
                )),
        RepositoryProvider(
            create: (context) => WarehouseLoadOutRepository(
                  remoteDataSource: getIt.get<WarehouseLoadOutProvider>(),
                )),
        RepositoryProvider(
          create: (context) => ProductRepository(
            remoteDataSource: getIt.get<ProductProvider>(),
          ),
        ),
      ],
      child: DefaultTabController(
        length: CustomAppBar.length,
        child: Scaffold(
          appBar: const CustomAppBar(),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: BlocProvider(
              create: (context) => ProductCubit(
                  productRepository:
                      RepositoryProvider.of<ProductRepository>(context))
                ..fetch(),
              child: TabBarView(
                children: [
                  BlocProvider(
                    create: (context) => OpeningStockCubit(
                        openingStockRepository:
                            RepositoryProvider.of<OpeningStockRepository>(
                                context))
                      ..fetch(),
                    child: OpeningStockPage(),
                  ),
                  TakeScreen(),
                  GiveScreen(),
                  SaleScreen(),
                  BlocProvider(
                    create: (context) => LoadInCubit(
                        loadInRepository:
                            RepositoryProvider.of<WarehouseLoadInRepository>(
                                context))
                      ..fetch(),
                    child: LoadInScreen(),
                  ),
                  BlocProvider(
                    create: (context) => LoadOutCubit(
                        loadOutRepository:
                            RepositoryProvider.of<WarehouseLoadOutRepository>(
                                context))
                      ..fetch(),
                    child: LoadOutScreen(),
                  ),
                  ReceiptScreen(),
                  Center(child: Text('Content of Tab Seven')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
