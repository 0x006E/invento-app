import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/Sale/sale.dart';
import 'package:invento/data/repositories/ibase_repository.dart';

class SaleRepository implements IBaseRepository<Sale> {
  final int size;

  const SaleRepository({this.size = 10});

  @override
  Future<Either<DataSourceError, Sale>> create(Sale body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceError, Sale>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceError, PageableContent<Sale>>> getPage(
      {required int page, int? size}) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceError, Sale>> update(Sale body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
