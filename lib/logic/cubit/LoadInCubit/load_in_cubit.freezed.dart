// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WarehouseLoadIn> loadIns, String? status, bool isError)
        loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<WarehouseLoadIn> loadIns, String? status, bool isError)?
        loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<WarehouseLoadIn> loadIns, String? status, bool isError)?
        loaded,
    TResult Function(String errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInStateLoading value) loading,
    required TResult Function(LoadInStateLoaded value) loaded,
    required TResult Function(LoadInStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInStateLoading value)? loading,
    TResult? Function(LoadInStateLoaded value)? loaded,
    TResult? Function(LoadInStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInStateLoading value)? loading,
    TResult Function(LoadInStateLoaded value)? loaded,
    TResult Function(LoadInStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadInStateCopyWith<$Res> {
  factory $LoadInStateCopyWith(
          LoadInState value, $Res Function(LoadInState) then) =
      _$LoadInStateCopyWithImpl<$Res, LoadInState>;
}

/// @nodoc
class _$LoadInStateCopyWithImpl<$Res, $Val extends LoadInState>
    implements $LoadInStateCopyWith<$Res> {
  _$LoadInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadInStateLoadingCopyWith<$Res> {
  factory _$$LoadInStateLoadingCopyWith(_$LoadInStateLoading value,
          $Res Function(_$LoadInStateLoading) then) =
      __$$LoadInStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInStateLoadingCopyWithImpl<$Res>
    extends _$LoadInStateCopyWithImpl<$Res, _$LoadInStateLoading>
    implements _$$LoadInStateLoadingCopyWith<$Res> {
  __$$LoadInStateLoadingCopyWithImpl(
      _$LoadInStateLoading _value, $Res Function(_$LoadInStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInStateLoading implements LoadInStateLoading {
  const _$LoadInStateLoading();

  @override
  String toString() {
    return 'LoadInState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WarehouseLoadIn> loadIns, String? status, bool isError)
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
            List<WarehouseLoadIn> loadIns, String? status, bool isError)?
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
            List<WarehouseLoadIn> loadIns, String? status, bool isError)?
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
    required TResult Function(LoadInStateLoading value) loading,
    required TResult Function(LoadInStateLoaded value) loaded,
    required TResult Function(LoadInStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInStateLoading value)? loading,
    TResult? Function(LoadInStateLoaded value)? loaded,
    TResult? Function(LoadInStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInStateLoading value)? loading,
    TResult Function(LoadInStateLoaded value)? loaded,
    TResult Function(LoadInStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadInStateLoading implements LoadInState {
  const factory LoadInStateLoading() = _$LoadInStateLoading;
}

/// @nodoc
abstract class _$$LoadInStateLoadedCopyWith<$Res> {
  factory _$$LoadInStateLoadedCopyWith(
          _$LoadInStateLoaded value, $Res Function(_$LoadInStateLoaded) then) =
      __$$LoadInStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<WarehouseLoadIn> loadIns, String? status, bool isError});
}

/// @nodoc
class __$$LoadInStateLoadedCopyWithImpl<$Res>
    extends _$LoadInStateCopyWithImpl<$Res, _$LoadInStateLoaded>
    implements _$$LoadInStateLoadedCopyWith<$Res> {
  __$$LoadInStateLoadedCopyWithImpl(
      _$LoadInStateLoaded _value, $Res Function(_$LoadInStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadIns = null,
    Object? status = freezed,
    Object? isError = null,
  }) {
    return _then(_$LoadInStateLoaded(
      loadIns: null == loadIns
          ? _value._loadIns
          : loadIns // ignore: cast_nullable_to_non_nullable
              as List<WarehouseLoadIn>,
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

class _$LoadInStateLoaded implements LoadInStateLoaded {
  const _$LoadInStateLoaded(
      {required final List<WarehouseLoadIn> loadIns,
      this.status,
      this.isError = false})
      : _loadIns = loadIns;

  final List<WarehouseLoadIn> _loadIns;
  @override
  List<WarehouseLoadIn> get loadIns {
    if (_loadIns is EqualUnmodifiableListView) return _loadIns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadIns);
  }

  @override
  final String? status;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'LoadInState.loaded(loadIns: $loadIns, status: $status, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInStateLoaded &&
            const DeepCollectionEquality().equals(other._loadIns, _loadIns) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_loadIns), status, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInStateLoadedCopyWith<_$LoadInStateLoaded> get copyWith =>
      __$$LoadInStateLoadedCopyWithImpl<_$LoadInStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WarehouseLoadIn> loadIns, String? status, bool isError)
        loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) {
    return loaded(loadIns, status, isError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<WarehouseLoadIn> loadIns, String? status, bool isError)?
        loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) {
    return loaded?.call(loadIns, status, isError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<WarehouseLoadIn> loadIns, String? status, bool isError)?
        loaded,
    TResult Function(String errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(loadIns, status, isError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInStateLoading value) loading,
    required TResult Function(LoadInStateLoaded value) loaded,
    required TResult Function(LoadInStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInStateLoading value)? loading,
    TResult? Function(LoadInStateLoaded value)? loaded,
    TResult? Function(LoadInStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInStateLoading value)? loading,
    TResult Function(LoadInStateLoaded value)? loaded,
    TResult Function(LoadInStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadInStateLoaded implements LoadInState {
  const factory LoadInStateLoaded(
      {required final List<WarehouseLoadIn> loadIns,
      final String? status,
      final bool isError}) = _$LoadInStateLoaded;

  List<WarehouseLoadIn> get loadIns;
  String? get status;
  bool get isError;
  @JsonKey(ignore: true)
  _$$LoadInStateLoadedCopyWith<_$LoadInStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInStateErrorCopyWith<$Res> {
  factory _$$LoadInStateErrorCopyWith(
          _$LoadInStateError value, $Res Function(_$LoadInStateError) then) =
      __$$LoadInStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage, int? errorCode});
}

/// @nodoc
class __$$LoadInStateErrorCopyWithImpl<$Res>
    extends _$LoadInStateCopyWithImpl<$Res, _$LoadInStateError>
    implements _$$LoadInStateErrorCopyWith<$Res> {
  __$$LoadInStateErrorCopyWithImpl(
      _$LoadInStateError _value, $Res Function(_$LoadInStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? errorCode = freezed,
  }) {
    return _then(_$LoadInStateError(
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

class _$LoadInStateError implements LoadInStateError {
  const _$LoadInStateError({required this.errorMessage, this.errorCode});

  @override
  final String errorMessage;
  @override
  final int? errorCode;

  @override
  String toString() {
    return 'LoadInState.error(errorMessage: $errorMessage, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInStateError &&
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
  _$$LoadInStateErrorCopyWith<_$LoadInStateError> get copyWith =>
      __$$LoadInStateErrorCopyWithImpl<_$LoadInStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<WarehouseLoadIn> loadIns, String? status, bool isError)
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
            List<WarehouseLoadIn> loadIns, String? status, bool isError)?
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
            List<WarehouseLoadIn> loadIns, String? status, bool isError)?
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
    required TResult Function(LoadInStateLoading value) loading,
    required TResult Function(LoadInStateLoaded value) loaded,
    required TResult Function(LoadInStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInStateLoading value)? loading,
    TResult? Function(LoadInStateLoaded value)? loaded,
    TResult? Function(LoadInStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInStateLoading value)? loading,
    TResult Function(LoadInStateLoaded value)? loaded,
    TResult Function(LoadInStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoadInStateError implements LoadInState {
  const factory LoadInStateError(
      {required final String errorMessage,
      final int? errorCode}) = _$LoadInStateError;

  String get errorMessage;
  int? get errorCode;
  @JsonKey(ignore: true)
  _$$LoadInStateErrorCopyWith<_$LoadInStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
