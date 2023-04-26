import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/WarehouseLoadIn/warehouse_load_in.dart';
import 'package:invento/data/repositories/IBaseRepository.dart';

class WarehouseLoadInRepository implements IBaseRepository<WarehouseLoadIn> {
  final int size;

  const WarehouseLoadInRepository({this.size = 10});

  @override
  Future<Either<WarehouseLoadIn, DataSourceError>> create(
      WarehouseLoadIn body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<WarehouseLoadIn, DataSourceError>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<PageableContent<WarehouseLoadIn>, DataSourceError>> getPage(
      {required int page, int? size}) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  @override
  Future<Either<WarehouseLoadIn, DataSourceError>> update(
      WarehouseLoadIn body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
