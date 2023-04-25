import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as apiRoutes;
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/WarehouseLoadOut/warehouse_load_out.dart';
import 'package:retrofit/retrofit.dart';

part 'warehouse_load_out_controller.g.dart';

@RestApi(baseUrl: apiRoutes.BASE_URL + apiRoutes.WAREHOUSE_LOAD_OUT_ENDPOINT)
abstract class WarehouseLoadOutController {
  factory WarehouseLoadOutController(Dio dio, {String baseUrl}) =
      _WarehouseLoadOutController;

  @GET('/')
  Future<PageableContent<WarehouseLoadOut>> getWarehouseLoadIns(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @GET("/{id}")
  Future<WarehouseLoadOut> getWarehouseLoadInById(@Path("id") String id);

  @POST('/')
  Future<WarehouseLoadOut> createWarehouseLoadIn(
      @Body() WarehouseLoadOut warehouseLoadOut);

  @PUT('/')
  Future<WarehouseLoadOut> updateWarehouseLoadIn(
      @Body() WarehouseLoadOut warehouseLoadOut);
}
