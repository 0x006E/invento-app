import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/GiveStock/give_stock.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/repositories/IBaseRepository.dart';

class GiveStockRepository implements IBaseRepository<GiveStock> {
  final int size;

  const GiveStockRepository({this.size = 10});

  @override
  Future<Either<GiveStock, DataSourceError>> create(GiveStock body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<GiveStock, DataSourceError>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<PageableContent<GiveStock>, DataSourceError>> getPage(
      {required int page, int? size}) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  @override
  Future<Either<GiveStock, DataSourceError>> update(GiveStock body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
