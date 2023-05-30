import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/WarehouseLoadOut/warehouse_load_out.dart';
import 'package:invento/data/providers/WarehouseLoadOutProvider/warehouse_load_out_provider.dart';
import 'package:invento/utils/error_handler.dart';

class WarehouseLoadOutRepository {
  final int size;
  final WarehouseLoadOutProvider remoteDataSource;

  const WarehouseLoadOutRepository(
      {this.size = 10, required this.remoteDataSource});

  static const DataSourceError badRequest =
      DataSourceError(statusCode: 400, message: "Request badly formed");

  Future<Either<DataSourceError, WarehouseLoadOut>> create(
      WarehouseLoadOut body) async {
    if (body.loadOutId != null) throw badRequest;
    if (body.vehicleNumber.isEmpty) throw badRequest;
    if (body.ervnumber.isEmpty) throw badRequest;
    return handleError(() async => await remoteDataSource.create(body));
  }

  Future<Either<DataSourceError, WarehouseLoadOut>> getById(String id) async {
    if (id.isEmpty) throw badRequest;
    return handleError(() async => await remoteDataSource.getById(id));
  }

  Future<Either<DataSourceError, PageableContent<WarehouseLoadOut>>> getPage(
      {required int page, int? size}) async {
    size ??= this.size;
    return handleError(
        () async => await remoteDataSource.getPage(page: page, size: size));
  }

  Future<Either<DataSourceError, WarehouseLoadOut>> update(
      WarehouseLoadOut body) async {
    if (body.loadOutId == null) throw badRequest;
    if (body.warehouseId != null) throw badRequest;
    if (body.id != null) throw badRequest;
    return handleError(() async => await remoteDataSource.update(body));
  }
}
