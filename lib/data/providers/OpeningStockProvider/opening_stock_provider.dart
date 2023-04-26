import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as api_routes;
import 'package:invento/data/models/OpeningStock/opening_stock.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/providers/IBaseProvider.dart';
import 'package:retrofit/retrofit.dart';

part 'opening_stock_provider.g.dart';

@RestApi(baseUrl: api_routes.BASE_URL + api_routes.OPENING_STOCK_ENDPOINT)
abstract class OpeningStockProvider implements IBaseProvider<OpeningStock> {
  factory OpeningStockProvider(Dio dio, {String baseUrl}) =
      _OpeningStockProvider;

  @override
  @GET('/')
  Future<PageableContent<OpeningStock>> getPage(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @override
  @GET("/{id}")
  Future<OpeningStock> getById(@Path("id") String id);

  @override
  @POST('/')
  Future<OpeningStock> create(@Body() OpeningStock openingStock);

  @override
  @PUT('/')
  Future<OpeningStock> update(@Body() OpeningStock openingStock);
}
