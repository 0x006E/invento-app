import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/WarehouseLoadOut/warehouse_load_out.dart';

class WarehouseLoadOutRepository {
  final int size;

  const WarehouseLoadOutRepository({this.size = 10});

  Future<Either<DataSourceError, WarehouseLoadOut>> create(
      WarehouseLoadOut body) {
    // TODO: implement create
    throw UnimplementedError();
  }

  Future<Either<DataSourceError, WarehouseLoadOut>> getById(String id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  Future<Either<DataSourceError, PageableContent<WarehouseLoadOut>>> getPage(
      {required int page, int? size}) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  Future<Either<DataSourceError, WarehouseLoadOut>> update(
      WarehouseLoadOut body) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
