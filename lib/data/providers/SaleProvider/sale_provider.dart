import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as api_routes;
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/Sale/sale.dart';
import 'package:invento/data/providers/IBaseProvider.dart';
import 'package:retrofit/retrofit.dart';

part 'sale_provider.g.dart';

@RestApi(baseUrl: api_routes.BASE_URL + api_routes.SALE_ENDPOINT)
abstract class SaleProvider implements IBaseProvider<Sale> {
  factory SaleProvider(Dio dio, {String baseUrl}) = _SaleProvider;

  @override
  @GET('/')
  Future<PageableContent<Sale>> getPage(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @override
  @GET("/{id}")
  Future<Sale> getById(@Path("id") String id);

  @override
  @POST('/')
  Future<Sale> create(@Body() Sale sale);

  @override
  @PUT('/')
  Future<Sale> update(@Body() Sale sale);
}
