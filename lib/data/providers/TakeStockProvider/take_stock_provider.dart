import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as api_routes;
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/TakeStock/take_stock.dart';
import 'package:invento/data/providers/IBaseProvider.dart';
import 'package:retrofit/retrofit.dart';

part 'take_stock_provider.g.dart';

@RestApi(baseUrl: api_routes.BASE_URL + api_routes.TAKE_STOCK_ENDPOINT)
abstract class TakeStockProvider implements IBaseProvider<TakeStock> {
  factory TakeStockProvider(Dio dio, {String baseUrl}) = _TakeStockProvider;

  @override
  @GET('/')
  Future<PageableContent<TakeStock>> getPage(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @override
  @GET("/{id}")
  Future<TakeStock> getById(@Path("id") String id);

  @override
  @POST('/')
  Future<TakeStock> create(@Body() TakeStock stock);

  @override
  @PUT('/')
  Future<TakeStock> update(@Body() TakeStock stock);
}
