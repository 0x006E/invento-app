import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invento/constants/api_routes.dart' as api_routes;
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/Product/product.dart';
import 'package:invento/data/providers/ibase_provider.dart';
import 'package:retrofit/retrofit.dart';

part 'product_provider.g.dart';

@RestApi(baseUrl: api_routes.BASE_URL + api_routes.PRODUCT_ENDPOINT)
abstract class ProductProvider implements IBaseProvider<Product> {
  factory ProductProvider(Dio dio, {String baseUrl}) = _ProductProvider;

  @override
  @GET('/')
  Future<PageableContent<Product>> getPage(
      {@Query("page") required int page,
      @Default(10) @Query("size") int? size});

  @override
  @GET("/{id}")
  Future<Product> getById(@Path("id") String id);

  @GET("/all")
  Future<List<Product>> getAll();

  @override
  @POST('/')
  Future<Product> create(@Body() Product stock);

  @override
  @PUT('/')
  Future<Product> update(@Body() Product stock);
}
