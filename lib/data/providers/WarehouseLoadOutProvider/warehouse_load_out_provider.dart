import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as api_routes;
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/WarehouseLoadOut/warehouse_load_out.dart';
import 'package:invento/data/providers/IBaseProvider.dart';
import 'package:retrofit/retrofit.dart';

part 'warehouse_load_out_provider.g.dart';

@RestApi(baseUrl: api_routes.BASE_URL + api_routes.WAREHOUSE_LOAD_OUT_ENDPOINT)
abstract class WarehouseLoadOutProvider
    implements IBaseProvider<WarehouseLoadOut> {
  factory WarehouseLoadOutProvider(Dio dio, {String baseUrl}) =
      _WarehouseLoadOutProvider;

  @override
  @GET('/')
  Future<PageableContent<WarehouseLoadOut>> getPage(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @override
  @GET("/{id}")
  Future<WarehouseLoadOut> getById(@Path("id") String id);

  @override
  @POST('/')
  Future<WarehouseLoadOut> create(@Body() WarehouseLoadOut warehouseLoadOut);

  @override
  @PUT('/')
  Future<WarehouseLoadOut> update(@Body() WarehouseLoadOut warehouseLoadOut);
}
