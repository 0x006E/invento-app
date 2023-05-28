import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/GiveStock/give_stock.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';

class GiveStockRepository {
  final int size;

  const GiveStockRepository({this.size = 10});

  Future<Either<DataSourceError, GiveStock>> create(GiveStock body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  Future<Either<DataSourceError, GiveStock>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  Future<Either<DataSourceError, PageableContent<GiveStock>>> getPage(
      {required int page, int? size}) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  Future<Either<DataSourceError, GiveStock>> update(GiveStock body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
