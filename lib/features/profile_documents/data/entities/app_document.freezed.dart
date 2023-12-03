// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppDocument {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get directory => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String? get extension => throw _privateConstructorUsedError;
  String? get formattedDate => throw _privateConstructorUsedError;
  String? get formattedSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppDocumentCopyWith<AppDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppDocumentCopyWith<$Res> {
  factory $AppDocumentCopyWith(
          AppDocument value, $Res Function(AppDocument) then) =
      _$AppDocumentCopyWithImpl<$Res, AppDocument>;
  @useResult
  $Res call(
      {int id,
      String name,
      String path,
      String directory,
      DateTime date,
      int size,
      String? extension,
      String? formattedDate,
      String? formattedSize});
}

/// @nodoc
class _$AppDocumentCopyWithImpl<$Res, $Val extends AppDocument>
    implements $AppDocumentCopyWith<$Res> {
  _$AppDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? path = null,
    Object? directory = null,
    Object? date = null,
    Object? size = null,
    Object? extension = freezed,
    Object? formattedDate = freezed,
    Object? formattedSize = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      directory: null == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedDate: freezed == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedSize: freezed == formattedSize
          ? _value.formattedSize
          : formattedSize // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppDocumentCopyWith<$Res>
    implements $AppDocumentCopyWith<$Res> {
  factory _$$_AppDocumentCopyWith(
          _$_AppDocument value, $Res Function(_$_AppDocument) then) =
      __$$_AppDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String path,
      String directory,
      DateTime date,
      int size,
      String? extension,
      String? formattedDate,
      String? formattedSize});
}

/// @nodoc
class __$$_AppDocumentCopyWithImpl<$Res>
    extends _$AppDocumentCopyWithImpl<$Res, _$_AppDocument>
    implements _$$_AppDocumentCopyWith<$Res> {
  __$$_AppDocumentCopyWithImpl(
      _$_AppDocument _value, $Res Function(_$_AppDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? path = null,
    Object? directory = null,
    Object? date = null,
    Object? size = null,
    Object? extension = freezed,
    Object? formattedDate = freezed,
    Object? formattedSize = freezed,
  }) {
    return _then(_$_AppDocument(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      directory: null == directory
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      extension: freezed == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedDate: freezed == formattedDate
          ? _value.formattedDate
          : formattedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedSize: freezed == formattedSize
          ? _value.formattedSize
          : formattedSize // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppDocument implements _AppDocument {
  const _$_AppDocument(
      {this.id = 0,
      required this.name,
      required this.path,
      required this.directory,
      required this.date,
      required this.size,
      this.extension,
      this.formattedDate,
      this.formattedSize});

  @override
  @JsonKey()
  final int id;
  @override
  final String name;
  @override
  final String path;
  @override
  final String directory;
  @override
  final DateTime date;
  @override
  final int size;
  @override
  final String? extension;
  @override
  final String? formattedDate;
  @override
  final String? formattedSize;

  @override
  String toString() {
    return 'AppDocument(id: $id, name: $name, path: $path, directory: $directory, date: $date, size: $size, extension: $extension, formattedDate: $formattedDate, formattedSize: $formattedSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppDocument &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.directory, directory) ||
                other.directory == directory) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.formattedDate, formattedDate) ||
                other.formattedDate == formattedDate) &&
            (identical(other.formattedSize, formattedSize) ||
                other.formattedSize == formattedSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, path, directory, date,
      size, extension, formattedDate, formattedSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppDocumentCopyWith<_$_AppDocument> get copyWith =>
      __$$_AppDocumentCopyWithImpl<_$_AppDocument>(this, _$identity);
}

abstract class _AppDocument implements AppDocument {
  const factory _AppDocument(
      {final int id,
      required final String name,
      required final String path,
      required final String directory,
      required final DateTime date,
      required final int size,
      final String? extension,
      final String? formattedDate,
      final String? formattedSize}) = _$_AppDocument;

  @override
  int get id;
  @override
  String get name;
  @override
  String get path;
  @override
  String get directory;
  @override
  DateTime get date;
  @override
  int get size;
  @override
  String? get extension;
  @override
  String? get formattedDate;
  @override
  String? get formattedSize;
  @override
  @JsonKey(ignore: true)
  _$$_AppDocumentCopyWith<_$_AppDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
