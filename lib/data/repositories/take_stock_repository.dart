import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/TakeStock/take_stock.dart';
import 'package:invento/data/repositories/ibase_repository.dart';

class TakeStockRepository implements IBaseRepository<TakeStock> {
  final int size;

  const TakeStockRepository({this.size = 10});

  @override
  Future<Either<DataSourceError, TakeStock>> create(TakeStock body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceError, TakeStock>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceError, PageableContent<TakeStock>>> getPage(
      {required int page, int? size}) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceError, TakeStock>> update(TakeStock body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
