import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:invento/data/models/DataSourceError/datasource_error.dart';

Future<Either<DataSourceError, T>> handleError<T>(
    Future<T> Function() func) async {
  try {
    var response = await func();
    return Right(response);
  } on DioError catch (err) {
    if (err.type == DioErrorType.badResponse) {
      try {
        var e = DataSourceError.fromJson(
            err.response?.data as Map<String, dynamic>);
        return Left(e);
      } on DioError catch (e) {
        return Left(DataSourceError(
            statusCode: e.response?.statusCode ?? 500,
            message: e.message ?? 'Something went wrong'));
      }
    } else if (err.isNoConnectionError) {
      return Left(DataSourceError(message: "No internet"));
    } else {
      return Left(DataSourceError(message: err.message ?? ""));
    }
  }
}

extension DioErrorX on DioError {
  bool get isNoConnectionError =>
      type == DioErrorType.unknown &&
      error is SocketException; // import 'dart:io' for SocketException
}
