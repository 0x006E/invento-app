import 'package:freezed_annotation/freezed_annotation.dart';

part 'datasource_error.freezed.dart';
part 'datasource_error.g.dart';

@freezed
class DataSourceError with _$DataSourceError implements Exception {
  const factory DataSourceError({
    required int statusCode,
    required String message,
  }) = _DataSourceError;

  factory DataSourceError.fromJson(Map<String, dynamic> json) =>
      _$DataSourceErrorFromJson(json);
}
