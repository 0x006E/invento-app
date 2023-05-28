import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/Product/product.dart';
import 'package:invento/data/providers/ProductProvider/product_provider.dart';
import 'package:invento/utils/error_handler.dart';

class ProductRepository {
  final int size;
  final ProductProvider remoteDataSource;
  static const DataSourceError badRequest =
      DataSourceError(statusCode: 400, message: "Request badly formed");

  const ProductRepository({this.size = 10, required this.remoteDataSource});

  Future<Either<DataSourceError, Product>> create(Product body) async {
    throw UnimplementedError("Unnecessary Endpoint");
  }

  Future<Either<DataSourceError, Product>> getById(String id) async {
    if (id.isEmpty) throw badRequest;
    return handleError(() async => await remoteDataSource.getById(id));
  }

  Future<Either<DataSourceError, List<Product>>> getAll() async {
    return handleError(() async => await remoteDataSource.getAll());
  }

  Future<Either<DataSourceError, PageableContent<Product>>> getPage(
      {required int page, int? size}) async {
    throw UnimplementedError("Unnecessary Endpoint");
  }

  Future<Either<DataSourceError, Product>> update(Product body) async {
    throw UnimplementedError("Unnecessary Endpoint");
  }
}
