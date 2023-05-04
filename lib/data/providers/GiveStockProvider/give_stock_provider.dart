import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as api_routes;
import 'package:invento/data/models/GiveStock/give_stock.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/providers/ibase_provider.dart';
import 'package:retrofit/retrofit.dart';

part 'give_stock_provider.g.dart';

@RestApi(baseUrl: api_routes.BASE_URL + api_routes.GIVE_STOCK_ENDPOINT)
abstract class GiveStockProvider implements IBaseProvider<GiveStock> {
  factory GiveStockProvider(Dio dio, {String baseUrl}) = _GiveStockProvider;

  @override
  @GET('/')
  Future<PageableContent<GiveStock>> getPage(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @override
  @GET("/{id}")
  Future<GiveStock> getById(@Path("id") String id);

  @override
  @POST('/')
  Future<GiveStock> create(@Body() GiveStock stock);

  @override
  @PUT('/')
  Future<GiveStock> update(@Body() GiveStock stock);
}
