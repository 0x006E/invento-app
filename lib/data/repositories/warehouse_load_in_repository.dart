import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/models/WarehouseLoadIn/warehouse_load_in.dart';
import 'package:invento/data/providers/WarehouseLoadInProvider/warehouse_load_in_provider.dart';
import 'package:invento/utils/error_handler.dart';

class WarehouseLoadInRepository {
  final int size;
  final WarehouseLoadInProvider remoteDataSource;

  const WarehouseLoadInRepository(
      {this.size = 10, required this.remoteDataSource});

  static const DataSourceError badRequest =
      DataSourceError(statusCode: 400, message: "Request badly formed");

  Future<Either<DataSourceError, WarehouseLoadIn>> create(
      WarehouseLoadIn body) async {
    if (body.loadInId != null) throw badRequest;
    if (body.vehicleNumber.isEmpty) throw badRequest;
    if (body.invoiceNumber.isEmpty) throw badRequest;
    return handleError(() async => await remoteDataSource.create(body));
  }

  Future<Either<DataSourceError, WarehouseLoadIn>> getById(String id) async {
    if (id.isEmpty) throw badRequest;
    return handleError(() async => await remoteDataSource.getById(id));
  }

  Future<Either<DataSourceError, PageableContent<WarehouseLoadIn>>> getPage(
      {required int page, int? size}) async {
    size ??= this.size;
    return handleError(
        () async => await remoteDataSource.getPage(page: page, size: size));
  }

  Future<Either<DataSourceError, WarehouseLoadIn>> update(
      WarehouseLoadIn body) async {
    if (body.loadInId == null) throw badRequest;
    if (body.warehouseId != null) throw badRequest;
    if (body.id != null) throw badRequest;
    return handleError(() async => await remoteDataSource.update(body));
  }
}
