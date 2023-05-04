import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:invento/data/providers/OpeningStockProvider/opening_stock_provider.dart';
import 'package:invento/data/providers/ProductProvider/product_provider.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

GetIt getIt = GetIt.instance;
Dio dio = Dio();
Logger logger = Logger();

void setupDependencies() {
  dio.interceptors.add(PrettyDioLogger());
  getIt.registerSingleton<OpeningStockProvider>(OpeningStockProvider(dio));
  getIt.registerSingleton<ProductProvider>(ProductProvider(dio));
}
