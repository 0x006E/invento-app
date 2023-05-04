// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(String errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateLoaded value) loaded,
    required TResult Function(ProductStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductStateLoading value)? loading,
    TResult? Function(ProductStateLoaded value)? loaded,
    TResult? Function(ProductStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateLoaded value)? loaded,
    TResult Function(ProductStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductStateLoadingCopyWith<$Res> {
  factory _$$ProductStateLoadingCopyWith(_$ProductStateLoading value,
          $Res Function(_$ProductStateLoading) then) =
      __$$ProductStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductStateLoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateLoading>
    implements _$$ProductStateLoadingCopyWith<$Res> {
  __$$ProductStateLoadingCopyWithImpl(
      _$ProductStateLoading _value, $Res Function(_$ProductStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductStateLoading implements ProductStateLoading {
  const _$ProductStateLoading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
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
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateLoaded value) loaded,
    required TResult Function(ProductStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductStateLoading value)? loading,
    TResult? Function(ProductStateLoaded value)? loaded,
    TResult? Function(ProductStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateLoaded value)? loaded,
    TResult Function(ProductStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductStateLoading implements ProductState {
  const factory ProductStateLoading() = _$ProductStateLoading;
}

/// @nodoc
abstract class _$$ProductStateLoadedCopyWith<$Res> {
  factory _$$ProductStateLoadedCopyWith(_$ProductStateLoaded value,
          $Res Function(_$ProductStateLoaded) then) =
      __$$ProductStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$ProductStateLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateLoaded>
    implements _$$ProductStateLoadedCopyWith<$Res> {
  __$$ProductStateLoadedCopyWithImpl(
      _$ProductStateLoaded _value, $Res Function(_$ProductStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductStateLoaded(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductStateLoaded implements ProductStateLoaded {
  const _$ProductStateLoaded({required final List<Product> products})
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductState.loaded(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateLoaded &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateLoadedCopyWith<_$ProductStateLoaded> get copyWith =>
      __$$ProductStateLoadedCopyWithImpl<_$ProductStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) {
    return loaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) {
    return loaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
    TResult Function(String errorMessage, int? errorCode)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateLoaded value) loaded,
    required TResult Function(ProductStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductStateLoading value)? loading,
    TResult? Function(ProductStateLoaded value)? loaded,
    TResult? Function(ProductStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateLoaded value)? loaded,
    TResult Function(ProductStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProductStateLoaded implements ProductState {
  const factory ProductStateLoaded({required final List<Product> products}) =
      _$ProductStateLoaded;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$ProductStateLoadedCopyWith<_$ProductStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductStateErrorCopyWith<$Res> {
  factory _$$ProductStateErrorCopyWith(
          _$ProductStateError value, $Res Function(_$ProductStateError) then) =
      __$$ProductStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage, int? errorCode});
}

/// @nodoc
class __$$ProductStateErrorCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateError>
    implements _$$ProductStateErrorCopyWith<$Res> {
  __$$ProductStateErrorCopyWithImpl(
      _$ProductStateError _value, $Res Function(_$ProductStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? errorCode = freezed,
  }) {
    return _then(_$ProductStateError(
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

class _$ProductStateError implements ProductStateError {
  const _$ProductStateError({required this.errorMessage, this.errorCode});

  @override
  final String errorMessage;
  @override
  final int? errorCode;

  @override
  String toString() {
    return 'ProductState.error(errorMessage: $errorMessage, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateError &&
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
  _$$ProductStateErrorCopyWith<_$ProductStateError> get copyWith =>
      __$$ProductStateErrorCopyWithImpl<_$ProductStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Product> products) loaded,
    required TResult Function(String errorMessage, int? errorCode) error,
  }) {
    return error(errorMessage, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? loaded,
    TResult? Function(String errorMessage, int? errorCode)? error,
  }) {
    return error?.call(errorMessage, errorCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Product> products)? loaded,
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
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateLoaded value) loaded,
    required TResult Function(ProductStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductStateLoading value)? loading,
    TResult? Function(ProductStateLoaded value)? loaded,
    TResult? Function(ProductStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateLoaded value)? loaded,
    TResult Function(ProductStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductStateError implements ProductState {
  const factory ProductStateError(
      {required final String errorMessage,
      final int? errorCode}) = _$ProductStateError;

  String get errorMessage;
  int? get errorCode;
  @JsonKey(ignore: true)
  _$$ProductStateErrorCopyWith<_$ProductStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
