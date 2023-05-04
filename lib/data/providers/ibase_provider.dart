import 'package:invento/data/models/PageableContent/pageable_content.dart';

abstract class IBaseProvider<T> {
  /// Get paginated data from source takes size and page number.
  Future<PageableContent<T>> getPage({required int page, int? size});

  /// Get response of type T by specifying id.
  Future<T> getById(String id);

  /// Create new item of type T in the data source.
  Future<T> create(T body);

  /// Update an existing item of type T.
  Future<T> update(T body);
}
