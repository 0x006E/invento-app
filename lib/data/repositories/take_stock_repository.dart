import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/TakeStock/take_stock.dart';

class TakeStockRepository {
  final int size;

  const TakeStockRepository({this.size = 10});

  Future<Either<DataSourceError, TakeStock>> create(TakeStock body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  Future<Either<DataSourceError, TakeStock>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  Future<Either<DataSourceError, PageableContent<TakeStock>>> getPage(
      {required int page, int? size}) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  Future<Either<DataSourceError, TakeStock>> update(TakeStock body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
