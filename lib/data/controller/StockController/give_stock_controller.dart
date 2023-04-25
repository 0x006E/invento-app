import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as apiRoutes;
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/Stock/stock.dart';
import 'package:retrofit/retrofit.dart';

part 'give_stock_controller.g.dart';

@RestApi(baseUrl: apiRoutes.BASE_URL + apiRoutes.TAKE_STOCK_ENDPOINT)
abstract class GiveStockController {
  factory GiveStockController(Dio dio, {String baseUrl}) = _GiveStockController;

  @GET('/')
  Future<PageableContent<Stock>> getGiveStocks(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @GET("/{id}")
  Future<Stock> getGiveStockById(@Path("id") String id);

  @POST('/')
  Future<Stock> createGiveStock(@Body() Stock stock);

  @PUT('/')
  Future<Stock> updateGiveStock(@Body() Stock stock);
}
