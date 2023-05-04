import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/Product/product.dart';
import 'package:invento/data/providers/ProductProvider/product_provider.dart';
import 'package:invento/data/repositories/ibase_repository.dart';

class ProductRepository implements IBaseRepository<Product> {
  final int size;
  final ProductProvider remoteDataSource;

  const ProductRepository({this.size = 10, required this.remoteDataSource});

  @override
  Future<Either<DataSourceError, Product>> create(Product body) async {
    throw UnimplementedError("Unnecessary Endpoint");
  }

  @override
  Future<Either<DataSourceError, Product>> getById(String id) async {
    throw UnimplementedError("Unnecessary Endpoint");
  }

  Future<Either<DataSourceError, List<Product>>> getAll() async {
    try {
      var response = await remoteDataSource.getAll();
      return Right(response);
    } on DioError catch (err) {
      if (err.type == DioErrorType.badResponse) {
        var e = DataSourceError.fromJson(
            err.response?.data as Map<String, dynamic>);
        return Left(e);
      } else {
        return Left(DataSourceError(statusCode: 0, message: err.message ?? ""));
      }
    }
  }

  @override
  Future<Either<DataSourceError, PageableContent<Product>>> getPage(
      {required int page, int? size}) async {
    throw UnimplementedError("Unnecessary Endpoint");
  }

  @override
  Future<Either<DataSourceError, Product>> update(Product body) async {
    throw UnimplementedError("Unnecessary Endpoint");
  }
}
