import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';

abstract class IBaseRepository<T> {
  /// Get paginated data from source takes size and page number.
  Future<Either<PageableContent<T>, DataSourceError>> getPage(
      {required int page, int? size});

  /// Get response of type T by specifying id.
  Future<Either<T, DataSourceError>> getById(String id);

  /// Create new item of type T in the .
  Future<Either<T, DataSourceError>> create(T body);

  /// Update an existing item of type T.
  Future<Either<T, DataSourceError>> update(T body);
}
