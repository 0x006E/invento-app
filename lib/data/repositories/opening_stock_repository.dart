import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/OpeningStock/opening_stock.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';
import 'package:invento/data/providers/OpeningStockProvider/opening_stock_provider.dart';
import 'package:invento/utils/error_handler.dart';

class OpeningStockRepository {
  final int size;
  final OpeningStockProvider remoteDataSource;
  static const DataSourceError badRequest =
      DataSourceError(statusCode: 400, message: "Request badly formed");

  const OpeningStockRepository(
      {this.size = 10, required this.remoteDataSource});

  Future<Either<DataSourceError, OpeningStock>> create(
      OpeningStock body) async {
    if (body.openingStockId != null) throw badRequest;
    if (body.dayEndId != null) throw badRequest;
    if (body.partyType != null) throw badRequest;
    if (body.partyId == null) throw badRequest;
    return handleError(() async => await remoteDataSource.create(body));
  }

  Future<Either<DataSourceError, OpeningStock>> getById(String id) async {
    if (id.isEmpty) throw badRequest;
    return handleError(() async => await remoteDataSource.getById(id));
  }

  Future<Either<DataSourceError, OpeningStock>> getByPartyId(String id) async {
    if (id.isEmpty) throw badRequest;
    return handleError(() async => await remoteDataSource.getByPartyId(id));
  }

  Future<Either<DataSourceError, PageableContent<OpeningStock>>> getPage(
      {required int page, int? size}) async {
    size ??= this.size;
    return handleError(
        () async => await remoteDataSource.getPage(page: page, size: size));
  }

  Future<Either<DataSourceError, OpeningStock>> update(
      OpeningStock body) async {
    if (body.openingStockId == null) throw badRequest;
    if (body.dayEndId != null) throw badRequest;
    if (body.partyType != null) throw badRequest;
    if (body.id != null) throw badRequest;
    return handleError(() async => await remoteDataSource.update(body));
  }
}
