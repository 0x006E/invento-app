import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as apiRoutes;
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/Stock/stock.dart';
import 'package:retrofit/retrofit.dart';

part 'take_stock_service.g.dart';

@RestApi(baseUrl: apiRoutes.BASE_URL + apiRoutes.TAKE_STOCK_ENDPOINT)
abstract class TakeStockService {
  factory TakeStockService(Dio dio, {String baseUrl}) = _TakeStockService;

  @GET('/')
  Future<PageableContent<Stock>> getTakeStocks(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @GET("/{id}")
  Future<Stock> getTakeStockById(@Path("id") String id);

  @POST('/')
  Future<Stock> createTakeStock(@Body() Stock stock);

  @PUT('/')
  Future<Stock> updateTakeStock(@Body() Stock stock);
}
