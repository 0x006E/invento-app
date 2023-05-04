import 'package:dartz/dartz.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';
import 'package:invento/data/models/PageableContent/pageable_content.dart';

abstract class IBaseRepository<T> {
  /// Get paginated data from source takes size and page number.
  Future<Either<DataSourceError, PageableContent<T>>> getPage(
      {required int page, int? size});

  /// Get response of type T by specifying id.
  Future<Either<DataSourceError, T>> getById(String id);

  /// Create new item of type T in the .
  Future<Either<DataSourceError, T>> create(T body);

  /// Update an existing item of type T.
  Future<Either<DataSourceError, T>> update(T body);
}
