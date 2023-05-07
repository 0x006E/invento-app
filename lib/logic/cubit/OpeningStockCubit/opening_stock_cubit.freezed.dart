// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opening_stock_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OpeningStockState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            OpeningStock openingStock, String? status, bool isError)
        loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(OpeningStock openingStock, String? status, bool isError)?
        loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(OpeningStock openingStock, String? status, bool isError)?
        loaded,
    TResult Function(String errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpeningStockStateLoading value) loading,
    required TResult Function(OpeningStockStateLoaded value) loaded,
    required TResult Function(OpeningStockStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpeningStockStateLoading value)? loading,
    TResult? Function(OpeningStockStateLoaded value)? loaded,
    TResult? Function(OpeningStockStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpeningStockStateLoading value)? loading,
    TResult Function(OpeningStockStateLoaded value)? loaded,
    TResult Function(OpeningStockStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningStockStateCopyWith<$Res> {
  factory $OpeningStockStateCopyWith(
          OpeningStockState value, $Res Function(OpeningStockState) then) =
      _$OpeningStockStateCopyWithImpl<$Res, OpeningStockState>;
}

/// @nodoc
class _$OpeningStockStateCopyWithImpl<$Res, $Val extends OpeningStockState>
    implements $OpeningStockStateCopyWith<$Res> {
  _$OpeningStockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OpeningStockStateLoadingCopyWith<$Res> {
  factory _$$OpeningStockStateLoadingCopyWith(_$OpeningStockStateLoading value,
          $Res Function(_$OpeningStockStateLoading) then) =
      __$$OpeningStockStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpeningStockStateLoadingCopyWithImpl<$Res>
    extends _$OpeningStockStateCopyWithImpl<$Res, _$OpeningStockStateLoading>
    implements _$$OpeningStockStateLoadingCopyWith<$Res> {
  __$$OpeningStockStateLoadingCopyWithImpl(_$OpeningStockStateLoading _value,
      $Res Function(_$OpeningStockStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OpeningStockStateLoading implements OpeningStockStateLoading {
  const _$OpeningStockStateLoading();

  @override
  String toString() {
    return 'OpeningStockState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningStockStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            OpeningStock openingStock, String? status, bool isError)
        loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(OpeningStock openingStock, String? status, bool isError)?
        loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(OpeningStock openingStock, String? status, bool isError)?
        loaded,
    TResult Function(String errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpeningStockStateLoading value) loading,
    required TResult Function(OpeningStockStateLoaded value) loaded,
    required TResult Function(OpeningStockStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpeningStockStateLoading value)? loading,
    TResult? Function(OpeningStockStateLoaded value)? loaded,
    TResult? Function(OpeningStockStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpeningStockStateLoading value)? loading,
    TResult Function(OpeningStockStateLoaded value)? loaded,
    TResult Function(OpeningStockStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OpeningStockStateLoading implements OpeningStockState {
  const factory OpeningStockStateLoading() = _$OpeningStockStateLoading;
}

/// @nodoc
abstract class _$$OpeningStockStateLoadedCopyWith<$Res> {
  factory _$$OpeningStockStateLoadedCopyWith(_$OpeningStockStateLoaded value,
          $Res Function(_$OpeningStockStateLoaded) then) =
      __$$OpeningStockStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({OpeningStock openingStock, String? status, bool isError});

  $OpeningStockCopyWith<$Res> get openingStock;
}

/// @nodoc
class __$$OpeningStockStateLoadedCopyWithImpl<$Res>
    extends _$OpeningStockStateCopyWithImpl<$Res, _$OpeningStockStateLoaded>
    implements _$$OpeningStockStateLoadedCopyWith<$Res> {
  __$$OpeningStockStateLoadedCopyWithImpl(_$OpeningStockStateLoaded _value,
      $Res Function(_$OpeningStockStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openingStock = null,
    Object? status = freezed,
    Object? isError = null,
  }) {
    return _then(_$OpeningStockStateLoaded(
      openingStock: null == openingStock
          ? _value.openingStock
          : openingStock // ignore: cast_nullable_to_non_nullable
              as OpeningStock,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OpeningStockCopyWith<$Res> get openingStock {
    return $OpeningStockCopyWith<$Res>(_value.openingStock, (value) {
      return _then(_value.copyWith(openingStock: value));
    });
  }
}

/// @nodoc

class _$OpeningStockStateLoaded implements OpeningStockStateLoaded {
  const _$OpeningStockStateLoaded(
      {required this.openingStock, this.status, this.isError = false});

  @override
  final OpeningStock openingStock;
  @override
  final String? status;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'OpeningStockState.loaded(openingStock: $openingStock, status: $status, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningStockStateLoaded &&
            (identical(other.openingStock, openingStock) ||
                other.openingStock == openingStock) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, openingStock, status, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningStockStateLoadedCopyWith<_$OpeningStockStateLoaded> get copyWith =>
      __$$OpeningStockStateLoadedCopyWithImpl<_$OpeningStockStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            OpeningStock openingStock, String? status, bool isError)
        loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) {
    return loaded(openingStock, status, isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(OpeningStock openingStock, String? status, bool isError)?
        loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) {
    return loaded?.call(openingStock, status, isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(OpeningStock openingStock, String? status, bool isError)?
        loaded,
    TResult Function(String errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(openingStock, status, isError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpeningStockStateLoading value) loading,
    required TResult Function(OpeningStockStateLoaded value) loaded,
    required TResult Function(OpeningStockStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpeningStockStateLoading value)? loading,
    TResult? Function(OpeningStockStateLoaded value)? loaded,
    TResult? Function(OpeningStockStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpeningStockStateLoading value)? loading,
    TResult Function(OpeningStockStateLoaded value)? loaded,
    TResult Function(OpeningStockStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class OpeningStockStateLoaded implements OpeningStockState {
  const factory OpeningStockStateLoaded(
      {required final OpeningStock openingStock,
      final String? status,
      final bool isError}) = _$OpeningStockStateLoaded;

  OpeningStock get openingStock;
  String? get status;
  bool get isError;
  @JsonKey(ignore: true)
  _$$OpeningStockStateLoadedCopyWith<_$OpeningStockStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OpeningStockStateErrorCopyWith<$Res> {
  factory _$$OpeningStockStateErrorCopyWith(_$OpeningStockStateError value,
          $Res Function(_$OpeningStockStateError) then) =
      __$$OpeningStockStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage, int? errorCode});
}

/// @nodoc
class __$$OpeningStockStateErrorCopyWithImpl<$Res>
    extends _$OpeningStockStateCopyWithImpl<$Res, _$OpeningStockStateError>
    implements _$$OpeningStockStateErrorCopyWith<$Res> {
  __$$OpeningStockStateErrorCopyWithImpl(_$OpeningStockStateError _value,
      $Res Function(_$OpeningStockStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? errorCode = freezed,
  }) {
    return _then(_$OpeningStockStateError(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OpeningStockStateError implements OpeningStockStateError {
  const _$OpeningStockStateError({required this.errorMessage, this.errorCode});

  @override
  final String errorMessage;
  @override
  final int? errorCode;

  @override
  String toString() {
    return 'OpeningStockState.error(errorMessage: $errorMessage, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningStockStateError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningStockStateErrorCopyWith<_$OpeningStockStateError> get copyWith =>
      __$$OpeningStockStateErrorCopyWithImpl<_$OpeningStockStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            OpeningStock openingStock, String? status, bool isError)
        loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) {
    return error(errorMessage, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(OpeningStock openingStock, String? status, bool isError)?
        loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) {
    return error?.call(errorMessage, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(OpeningStock openingStock, String? status, bool isError)?
        loaded,
    TResult Function(String errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage, errorCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpeningStockStateLoading value) loading,
    required TResult Function(OpeningStockStateLoaded value) loaded,
    required TResult Function(OpeningStockStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpeningStockStateLoading value)? loading,
    TResult? Function(OpeningStockStateLoaded value)? loaded,
    TResult? Function(OpeningStockStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpeningStockStateLoading value)? loading,
    TResult Function(OpeningStockStateLoaded value)? loaded,
    TResult Function(OpeningStockStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OpeningStockStateError implements OpeningStockState {
  const factory OpeningStockStateError(
      {required final String errorMessage,
      final int? errorCode}) = _$OpeningStockStateError;

  String get errorMessage;
  int? get errorCode;
  @JsonKey(ignore: true)
  _$$OpeningStockStateErrorCopyWith<_$OpeningStockStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
