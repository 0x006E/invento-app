import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as api_routes;
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/WarehouseLoadIn/warehouse_load_in.dart';
import 'package:invento/data/providers/IBaseProvider.dart';
import 'package:retrofit/retrofit.dart';

part 'warehouse_load_in_provider.g.dart';

@RestApi(baseUrl: api_routes.BASE_URL + api_routes.WAREHOUSE_LOAD_IN_ENDPOINT)
abstract class WarehouseLoadInProvider
    implements IBaseProvider<WarehouseLoadIn> {
  factory WarehouseLoadInProvider(Dio dio, {String baseUrl}) =
      _WarehouseLoadInProvider;

  @override
  @GET('/')
  Future<PageableContent<WarehouseLoadIn>> getPage(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @override
  @GET("/{id}")
  Future<WarehouseLoadIn> getById(@Path("id") String id);

  @override
  @POST('/')
  Future<WarehouseLoadIn> create(@Body() WarehouseLoadIn warehouseLoadIn);

  @override
  @PUT('/')
  Future<WarehouseLoadIn> update(@Body() WarehouseLoadIn warehouseLoadIn);
}
