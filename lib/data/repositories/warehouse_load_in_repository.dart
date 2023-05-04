import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/WarehouseLoadIn/warehouse_load_in.dart';
import 'package:invento/data/repositories/ibase_repository.dart';

class WarehouseLoadInRepository implements IBaseRepository<WarehouseLoadIn> {
  final int size;

  const WarehouseLoadInRepository({this.size = 10});

  @override
  Future<Either<DataSourceError, WarehouseLoadIn>> create(
      WarehouseLoadIn body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceError, WarehouseLoadIn>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceError, PageableContent<WarehouseLoadIn>>> getPage(
      {required int page, int? size}) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  @override
  Future<Either<DataSourceError, WarehouseLoadIn>> update(
      WarehouseLoadIn body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
