// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loadout_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadOutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)
        loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)?
        loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)?
        loaded,
    TResult Function(String errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOutStateLoading value) loading,
    required TResult Function(LoadOutStateLoaded value) loaded,
    required TResult Function(LoadOutStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOutStateLoading value)? loading,
    TResult? Function(LoadOutStateLoaded value)? loaded,
    TResult? Function(LoadOutStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOutStateLoading value)? loading,
    TResult Function(LoadOutStateLoaded value)? loaded,
    TResult Function(LoadOutStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadOutStateCopyWith<$Res> {
  factory $LoadOutStateCopyWith(
          LoadOutState value, $Res Function(LoadOutState) then) =
      _$LoadOutStateCopyWithImpl<$Res, LoadOutState>;
}

/// @nodoc
class _$LoadOutStateCopyWithImpl<$Res, $Val extends LoadOutState>
    implements $LoadOutStateCopyWith<$Res> {
  _$LoadOutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadOutStateLoadingCopyWith<$Res> {
  factory _$$LoadOutStateLoadingCopyWith(_$LoadOutStateLoading value,
          $Res Function(_$LoadOutStateLoading) then) =
      __$$LoadOutStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadOutStateLoadingCopyWithImpl<$Res>
    extends _$LoadOutStateCopyWithImpl<$Res, _$LoadOutStateLoading>
    implements _$$LoadOutStateLoadingCopyWith<$Res> {
  __$$LoadOutStateLoadingCopyWithImpl(
      _$LoadOutStateLoading _value, $Res Function(_$LoadOutStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadOutStateLoading implements LoadOutStateLoading {
  const _$LoadOutStateLoading();

  @override
  String toString() {
    return 'LoadOutState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadOutStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)
        loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)?
        loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)?
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
    required TResult Function(LoadOutStateLoading value) loading,
    required TResult Function(LoadOutStateLoaded value) loaded,
    required TResult Function(LoadOutStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOutStateLoading value)? loading,
    TResult? Function(LoadOutStateLoaded value)? loaded,
    TResult? Function(LoadOutStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOutStateLoading value)? loading,
    TResult Function(LoadOutStateLoaded value)? loaded,
    TResult Function(LoadOutStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadOutStateLoading implements LoadOutState {
  const factory LoadOutStateLoading() = _$LoadOutStateLoading;
}

/// @nodoc
abstract class _$$LoadOutStateLoadedCopyWith<$Res> {
  factory _$$LoadOutStateLoadedCopyWith(_$LoadOutStateLoaded value,
          $Res Function(_$LoadOutStateLoaded) then) =
      __$$LoadOutStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<WarehouseLoadOut> loadOuts, String? status, bool isError});
}

/// @nodoc
class __$$LoadOutStateLoadedCopyWithImpl<$Res>
    extends _$LoadOutStateCopyWithImpl<$Res, _$LoadOutStateLoaded>
    implements _$$LoadOutStateLoadedCopyWith<$Res> {
  __$$LoadOutStateLoadedCopyWithImpl(
      _$LoadOutStateLoaded _value, $Res Function(_$LoadOutStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadOuts = null,
    Object? status = freezed,
    Object? isError = null,
  }) {
    return _then(_$LoadOutStateLoaded(
      loadOuts: null == loadOuts
          ? _value._loadOuts
          : loadOuts // ignore: cast_nullable_to_non_nullable
              as List<WarehouseLoadOut>,
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
}

/// @nodoc

class _$LoadOutStateLoaded implements LoadOutStateLoaded {
  const _$LoadOutStateLoaded(
      {required final List<WarehouseLoadOut> loadOuts,
      this.status,
      this.isError = false})
      : _loadOuts = loadOuts;

  final List<WarehouseLoadOut> _loadOuts;
  @override
  List<WarehouseLoadOut> get loadOuts {
    if (_loadOuts is EqualUnmodifiableListView) return _loadOuts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadOuts);
  }

  @override
  final String? status;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'LoadOutState.loaded(loadOuts: $loadOuts, status: $status, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOutStateLoaded &&
            const DeepCollectionEquality().equals(other._loadOuts, _loadOuts) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_loadOuts), status, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadOutStateLoadedCopyWith<_$LoadOutStateLoaded> get copyWith =>
      __$$LoadOutStateLoadedCopyWithImpl<_$LoadOutStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)
        loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) {
    return loaded(loadOuts, status, isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)?
        loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) {
    return loaded?.call(loadOuts, status, isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)?
        loaded,
    TResult Function(String errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(loadOuts, status, isError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOutStateLoading value) loading,
    required TResult Function(LoadOutStateLoaded value) loaded,
    required TResult Function(LoadOutStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOutStateLoading value)? loading,
    TResult? Function(LoadOutStateLoaded value)? loaded,
    TResult? Function(LoadOutStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOutStateLoading value)? loading,
    TResult Function(LoadOutStateLoaded value)? loaded,
    TResult Function(LoadOutStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadOutStateLoaded implements LoadOutState {
  const factory LoadOutStateLoaded(
      {required final List<WarehouseLoadOut> loadOuts,
      final String? status,
      final bool isError}) = _$LoadOutStateLoaded;

  List<WarehouseLoadOut> get loadOuts;
  String? get status;
  bool get isError;
  @JsonKey(ignore: true)
  _$$LoadOutStateLoadedCopyWith<_$LoadOutStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadOutStateErrorCopyWith<$Res> {
  factory _$$LoadOutStateErrorCopyWith(
          _$LoadOutStateError value, $Res Function(_$LoadOutStateError) then) =
      __$$LoadOutStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage, int? errorCode});
}

/// @nodoc
class __$$LoadOutStateErrorCopyWithImpl<$Res>
    extends _$LoadOutStateCopyWithImpl<$Res, _$LoadOutStateError>
    implements _$$LoadOutStateErrorCopyWith<$Res> {
  __$$LoadOutStateErrorCopyWithImpl(
      _$LoadOutStateError _value, $Res Function(_$LoadOutStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? errorCode = freezed,
  }) {
    return _then(_$LoadOutStateError(
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

class _$LoadOutStateError implements LoadOutStateError {
  const _$LoadOutStateError({required this.errorMessage, this.errorCode});

  @override
  final String errorMessage;
  @override
  final int? errorCode;

  @override
  String toString() {
    return 'LoadOutState.error(errorMessage: $errorMessage, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOutStateError &&
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
  _$$LoadOutStateErrorCopyWith<_$LoadOutStateError> get copyWith =>
      __$$LoadOutStateErrorCopyWithImpl<_$LoadOutStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)
        loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) {
    return error(errorMessage, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)?
        loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) {
    return error?.call(errorMessage, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<WarehouseLoadOut> loadOuts, String? status, bool isError)?
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
    required TResult Function(LoadOutStateLoading value) loading,
    required TResult Function(LoadOutStateLoaded value) loaded,
    required TResult Function(LoadOutStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOutStateLoading value)? loading,
    TResult? Function(LoadOutStateLoaded value)? loaded,
    TResult? Function(LoadOutStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOutStateLoading value)? loading,
    TResult Function(LoadOutStateLoaded value)? loaded,
    TResult Function(LoadOutStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoadOutStateError implements LoadOutState {
  const factory LoadOutStateError(
      {required final String errorMessage,
      final int? errorCode}) = _$LoadOutStateError;

  String get errorMessage;
  int? get errorCode;
  @JsonKey(ignore: true)
  _$$LoadOutStateErrorCopyWith<_$LoadOutStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
