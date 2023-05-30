import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:get_it/get_it.dart';
import 'package:invento/data/providers/OpeningStockProvider/opening_stock_provider.dart';
import 'package:invento/data/providers/ProductProvider/product_provider.dart';
import 'package:invento/data/providers/WarehouseLoadInProvider/warehouse_load_in_provider.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

GetIt getIt = GetIt.instance;
BaseOptions options = BaseOptions(followRedirects: true);
Dio dio = Dio(options);
Logger logger = Logger();

void setupDependencies() {
  late CacheStore cacheStore;

  getTemporaryDirectory().then((dir) {
    cacheStore = HiveCacheStore(dir.path);

    var cacheOptions = CacheOptions(
      store: cacheStore,
      hitCacheOnErrorExcept: [], // for offline behaviour
    );
    dio.interceptors.add(
      DioCacheInterceptor(options: cacheOptions),
    );
  });
  dio.interceptors.add(PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
  ));
  dio.interceptors.add(RetryInterceptor(
    dio: dio,
    logPrint: logger.i,
  ));
  getIt.registerSingleton<OpeningStockProvider>(OpeningStockProvider(dio));
  getIt
      .registerSingleton<WarehouseLoadInProvider>(WarehouseLoadInProvider(dio));
  getIt.registerSingleton<ProductProvider>(ProductProvider(dio));
}
