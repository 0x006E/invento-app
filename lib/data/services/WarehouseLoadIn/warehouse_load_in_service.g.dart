// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_load_in_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _WarehouseLoadInService implements WarehouseLoadInService {
  _WarehouseLoadInService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??=
        'https://invento-server-production-ceee.up.railway.app/api/warehouse/load-in';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PageableContent<WarehouseLoadIn>> getWarehouseLoadIns({
    required page,
    size,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'size': size,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PageableContent<WarehouseLoadIn>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PageableContent<WarehouseLoadIn>.fromJson(
      _result.data!,
      (json) => WarehouseLoadIn.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<WarehouseLoadIn> getWarehouseLoadInById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<WarehouseLoadIn>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WarehouseLoadIn.fromJson(_result.data!);
    return value;
  }

  @override
  Future<WarehouseLoadIn> createWarehouseLoadIn(warehouseLoadIn) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(warehouseLoadIn.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<WarehouseLoadIn>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WarehouseLoadIn.fromJson(_result.data!);
    return value;
  }

  @override
  Future<WarehouseLoadIn> updateWarehouseLoadIn(warehouseLoadIn) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(warehouseLoadIn.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<WarehouseLoadIn>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = WarehouseLoadIn.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
