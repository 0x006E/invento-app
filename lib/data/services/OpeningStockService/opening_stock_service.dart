import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as apiRoutes;
import 'package:invento/data/models/OpeningStock/opening_stock.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:retrofit/retrofit.dart';

part 'opening_stock_service.g.dart';

@RestApi(baseUrl: apiRoutes.BASE_URL + apiRoutes.OPENING_STOCK_ENDPOINT)
abstract class OpeningStockService {
  factory OpeningStockService(Dio dio, {String baseUrl}) = _OpeningStockService;

  @GET('/')
  Future<PageableContent<OpeningStock>> getOpeningStocks(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @GET("/{id}")
  Future<OpeningStock> getOpeningStockById(@Path("id") String id);

  @POST('/')
  Future<OpeningStock> createOpeningStock(@Body() OpeningStock openingStock);

  @PUT('/')
  Future<OpeningStock> updateOpeningStock(@Body() OpeningStock openingStock);
}
