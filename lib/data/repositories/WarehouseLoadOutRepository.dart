import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/WarehouseLoadOut/warehouse_load_out.dart';
import 'package:invento/data/repositories/IBaseRepository.dart';

class WarehouseLoadOutRepository implements IBaseRepository<WarehouseLoadOut> {
  final int size;

  const WarehouseLoadOutRepository({this.size = 10});

  @override
  Future<Either<WarehouseLoadOut, DataSourceError>> create(
      WarehouseLoadOut body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<WarehouseLoadOut, DataSourceError>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<Either<PageableContent<WarehouseLoadOut>, DataSourceError>> getPage(
      {required int page, int? size}) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  @override
  Future<Either<WarehouseLoadOut, DataSourceError>> update(
      WarehouseLoadOut body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
