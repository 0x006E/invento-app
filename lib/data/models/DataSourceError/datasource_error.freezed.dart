// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datasource_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataSourceError _$DataSourceErrorFromJson(Map<String, dynamic> json) {
  return _DataSourceError.fromJson(json);
}

/// @nodoc
mixin _$DataSourceError {
  int? get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSourceErrorCopyWith<DataSourceError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSourceErrorCopyWith<$Res> {
  factory $DataSourceErrorCopyWith(
          DataSourceError value, $Res Function(DataSourceError) then) =
      _$DataSourceErrorCopyWithImpl<$Res, DataSourceError>;
  @useResult
  $Res call({int? statusCode, String message});
}

/// @nodoc
class _$DataSourceErrorCopyWithImpl<$Res, $Val extends DataSourceError>
    implements $DataSourceErrorCopyWith<$Res> {
  _$DataSourceErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataSourceErrorCopyWith<$Res>
    implements $DataSourceErrorCopyWith<$Res> {
  factory _$$_DataSourceErrorCopyWith(
          _$_DataSourceError value, $Res Function(_$_DataSourceError) then) =
      __$$_DataSourceErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, String message});
}

/// @nodoc
class __$$_DataSourceErrorCopyWithImpl<$Res>
    extends _$DataSourceErrorCopyWithImpl<$Res, _$_DataSourceError>
    implements _$$_DataSourceErrorCopyWith<$Res> {
  __$$_DataSourceErrorCopyWithImpl(
      _$_DataSourceError _value, $Res Function(_$_DataSourceError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = null,
  }) {
    return _then(_$_DataSourceError(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataSourceError implements _DataSourceError {
  const _$_DataSourceError({this.statusCode, required this.message});

  factory _$_DataSourceError.fromJson(Map<String, dynamic> json) =>
      _$$_DataSourceErrorFromJson(json);

  @override
  final int? statusCode;
  @override
  final String message;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSourceError &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSourceErrorCopyWith<_$_DataSourceError> get copyWith =>
      __$$_DataSourceErrorCopyWithImpl<_$_DataSourceError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSourceErrorToJson(
      this,
    );
  }
}

abstract class _DataSourceError implements DataSourceError {
  const factory _DataSourceError(
      {final int? statusCode,
      required final String message}) = _$_DataSourceError;

  factory _DataSourceError.fromJson(Map<String, dynamic> json) =
      _$_DataSourceError.fromJson;

  @override
  int? get statusCode;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_DataSourceErrorCopyWith<_$_DataSourceError> get copyWith =>
      throw _privateConstructorUsedError;
}
