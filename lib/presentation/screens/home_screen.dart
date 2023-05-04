import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invento/data/providers/OpeningStockProvider/opening_stock_provider.dart';
import 'package:invento/data/providers/ProductProvider/product_provider.dart';
import 'package:invento/data/repositories/opening_stock_repository.dart';
import 'package:invento/data/repositories/product_repository.dart';
import 'package:invento/injection.dart';
import 'package:invento/logic/cubit/OpeningStockCubit/opening_stock_cubit.dart';
import 'package:invento/logic/cubit/ProductCubit/product_cubit.dart';
import 'package:invento/presentation/components/appbar.dart';
import 'package:invento/presentation/screens/give_screen.dart';
import 'package:invento/presentation/screens/loadin_screen.dart';
import 'package:invento/presentation/screens/loadout_screen.dart';
import 'package:invento/presentation/screens/openingstock_screen.dart';
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
    return DefaultTabController(
      length: CustomAppBar.length,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
            children: [
              MultiRepositoryProvider(
                providers: [
                  RepositoryProvider(
                    create: (context) => OpeningStockRepository(
                      remoteDataSource: getIt.get<OpeningStockProvider>(),
                    ),
                  ),
                  RepositoryProvider(
                    create: (context) => ProductRepository(
                      remoteDataSource: getIt.get<ProductProvider>(),
                    ),
                  ),
                ],
                child: MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => OpeningStockCubit(
                          openingStockRepository:
                              RepositoryProvider.of<OpeningStockRepository>(
                                  context))
                        ..fetch(),
                    ),
                    BlocProvider(
                      create: (context) => ProductCubit(
                          productRepository:
                              RepositoryProvider.of<ProductRepository>(context))
                        ..fetch(),
                    )
                  ],
                  child: OpeningStockPage(),
                ),
              ),
              TakeScreen(),
              GiveScreen(),
              SaleScreen(),
              LoadInScreen(),
              LoadOutScreen(),
              Center(child: Text('Content of Tab Six')),
              Center(child: Text('Content of Tab Seven')),
            ],
          ),
        ),
      ),
    );
  }
}
