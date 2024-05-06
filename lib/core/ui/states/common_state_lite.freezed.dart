// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_state_lite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonStateLite<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T data) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(T data)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T data)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_Ready<T> value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T> value)? init,
    TResult? Function(_Ready<T> value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Ready<T> value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonStateLiteCopyWith<T, $Res> {
  factory $CommonStateLiteCopyWith(
          CommonStateLite<T> value, $Res Function(CommonStateLite<T>) then) =
      _$CommonStateLiteCopyWithImpl<T, $Res, CommonStateLite<T>>;
}

/// @nodoc
class _$CommonStateLiteCopyWithImpl<T, $Res, $Val extends CommonStateLite<T>>
    implements $CommonStateLiteCopyWith<T, $Res> {
  _$CommonStateLiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<T, $Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl<T> value, $Res Function(_$InitImpl<T>) then) =
      __$$InitImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<T, $Res>
    extends _$CommonStateLiteCopyWithImpl<T, $Res, _$InitImpl<T>>
    implements _$$InitImplCopyWith<T, $Res> {
  __$$InitImplCopyWithImpl(
      _$InitImpl<T> _value, $Res Function(_$InitImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl<T> implements _Init<T> {
  const _$InitImpl();

  @override
  String toString() {
    return 'CommonStateLite<$T>.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T data) ready,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(T data)? ready,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T data)? ready,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_Ready<T> value) ready,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T> value)? init,
    TResult? Function(_Ready<T> value)? ready,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Ready<T> value)? ready,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init<T> implements CommonStateLite<T> {
  const factory _Init() = _$InitImpl<T>;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<T, $Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl<T> value, $Res Function(_$ReadyImpl<T>) then) =
      __$$ReadyImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<T, $Res>
    extends _$CommonStateLiteCopyWithImpl<T, $Res, _$ReadyImpl<T>>
    implements _$$ReadyImplCopyWith<T, $Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl<T> _value, $Res Function(_$ReadyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ReadyImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ReadyImpl<T> implements _Ready<T> {
  const _$ReadyImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'CommonStateLite<$T>.ready(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<T, _$ReadyImpl<T>> get copyWith =>
      __$$ReadyImplCopyWithImpl<T, _$ReadyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(T data) ready,
  }) {
    return ready(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(T data)? ready,
  }) {
    return ready?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(T data)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init<T> value) init,
    required TResult Function(_Ready<T> value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init<T> value)? init,
    TResult? Function(_Ready<T> value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init<T> value)? init,
    TResult Function(_Ready<T> value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready<T> implements CommonStateLite<T> {
  const factory _Ready(final T data) = _$ReadyImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<T, _$ReadyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
