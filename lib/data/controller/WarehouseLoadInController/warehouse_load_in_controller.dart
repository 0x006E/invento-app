import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as apiRoutes;
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/WarehouseLoadIn/warehouse_load_in.dart';
import 'package:retrofit/retrofit.dart';

part 'warehouse_load_in_controller.g.dart';

@RestApi(baseUrl: apiRoutes.BASE_URL + apiRoutes.WAREHOUSE_LOAD_IN_ENDPOINT)
abstract class WarehouseLoadInController {
  factory WarehouseLoadInController(Dio dio, {String baseUrl}) =
      _WarehouseLoadInController;

  @GET('/')
  Future<PageableContent<WarehouseLoadIn>> getWarehouseLoadIns(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @GET("/{id}")
  Future<WarehouseLoadIn> getWarehouseLoadInById(@Path("id") String id);

  @POST('/')
  Future<WarehouseLoadIn> createWarehouseLoadIn(
      @Body() WarehouseLoadIn warehouseLoadIn);

  @PUT('/')
  Future<WarehouseLoadIn> updateWarehouseLoadIn(
      @Body() WarehouseLoadIn warehouseLoadIn);
}
