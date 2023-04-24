import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as apiRoutes;
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/Sale/sale.dart';
import 'package:retrofit/retrofit.dart';

part 'sale_service.g.dart';

@RestApi(baseUrl: apiRoutes.BASE_URL + apiRoutes.SALE_ENDPOINT)
abstract class SaleService {
  factory SaleService(Dio dio, {String baseUrl}) = _SaleService;

  @GET('/')
  Future<PageableContent<Sale>> getSales(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @GET("/{id}")
  Future<Sale> getSaleById(@Path("id") String id);

  @POST('/')
  Future<Sale> createSale(@Body() Sale sale);

  @PUT('/')
  Future<Sale> updateSale(@Body() Sale sale);
}
