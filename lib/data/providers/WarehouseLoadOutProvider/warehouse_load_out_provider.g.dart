// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warehouse_load_out_provider.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _WarehouseLoadOutProvider implements WarehouseLoadOutProvider {
  _WarehouseLoadOutProvider(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://web-0x006e.cloud.okteto.net/api/warehouse/load-out';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PageableContent<WarehouseLoadOut>> getPage({
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
        _setStreamType<PageableContent<WarehouseLoadOut>>(Options(
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
    final value = PageableContent<WarehouseLoadOut>.fromJson(
      _result.data!,
      (json) => WarehouseLoadOut.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<WarehouseLoadOut> getById(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<WarehouseLoadOut>(Options(
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
    final value = WarehouseLoadOut.fromJson(_result.data!);
    return value;
  }

  @override
  Future<WarehouseLoadOut> create(warehouseLoadOut) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(warehouseLoadOut.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<WarehouseLoadOut>(Options(
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
    final value = WarehouseLoadOut.fromJson(_result.data!);
    return value;
  }

  @override
  Future<WarehouseLoadOut> update(warehouseLoadOut) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(warehouseLoadOut.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<WarehouseLoadOut>(Options(
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
    final value = WarehouseLoadOut.fromJson(_result.data!);
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
