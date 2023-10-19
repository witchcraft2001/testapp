// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_task_sbs_record_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiTaskSBSRecordDao _$ApiTaskSBSRecordDaoFromJson(Map<String, dynamic> json) {
  return _ApiTaskSBSRecordDao.fromJson(json);
}

/// @nodoc
mixin _$ApiTaskSBSRecordDao {
  int get recordID => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  DateTime get reportDate => throw _privateConstructorUsedError;
  String get hours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTaskSBSRecordDaoCopyWith<ApiTaskSBSRecordDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTaskSBSRecordDaoCopyWith<$Res> {
  factory $ApiTaskSBSRecordDaoCopyWith(
          ApiTaskSBSRecordDao value, $Res Function(ApiTaskSBSRecordDao) then) =
      _$ApiTaskSBSRecordDaoCopyWithImpl<$Res, ApiTaskSBSRecordDao>;
  @useResult
  $Res call({int recordID, String details, DateTime reportDate, String hours});
}

/// @nodoc
class _$ApiTaskSBSRecordDaoCopyWithImpl<$Res, $Val extends ApiTaskSBSRecordDao>
    implements $ApiTaskSBSRecordDaoCopyWith<$Res> {
  _$ApiTaskSBSRecordDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordID = null,
    Object? details = null,
    Object? reportDate = null,
    Object? hours = null,
  }) {
    return _then(_value.copyWith(
      recordID: null == recordID
          ? _value.recordID
          : recordID // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      reportDate: null == reportDate
          ? _value.reportDate
          : reportDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiTaskSBSRecordDaoCopyWith<$Res>
    implements $ApiTaskSBSRecordDaoCopyWith<$Res> {
  factory _$$_ApiTaskSBSRecordDaoCopyWith(_$_ApiTaskSBSRecordDao value,
          $Res Function(_$_ApiTaskSBSRecordDao) then) =
      __$$_ApiTaskSBSRecordDaoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int recordID, String details, DateTime reportDate, String hours});
}

/// @nodoc
class __$$_ApiTaskSBSRecordDaoCopyWithImpl<$Res>
    extends _$ApiTaskSBSRecordDaoCopyWithImpl<$Res, _$_ApiTaskSBSRecordDao>
    implements _$$_ApiTaskSBSRecordDaoCopyWith<$Res> {
  __$$_ApiTaskSBSRecordDaoCopyWithImpl(_$_ApiTaskSBSRecordDao _value,
      $Res Function(_$_ApiTaskSBSRecordDao) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordID = null,
    Object? details = null,
    Object? reportDate = null,
    Object? hours = null,
  }) {
    return _then(_$_ApiTaskSBSRecordDao(
      recordID: null == recordID
          ? _value.recordID
          : recordID // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      reportDate: null == reportDate
          ? _value.reportDate
          : reportDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiTaskSBSRecordDao implements _ApiTaskSBSRecordDao {
  const _$_ApiTaskSBSRecordDao(
      {required this.recordID,
      required this.details,
      required this.reportDate,
      required this.hours});

  factory _$_ApiTaskSBSRecordDao.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTaskSBSRecordDaoFromJson(json);

  @override
  final int recordID;
  @override
  final String details;
  @override
  final DateTime reportDate;
  @override
  final String hours;

  @override
  String toString() {
    return 'ApiTaskSBSRecordDao(recordID: $recordID, details: $details, reportDate: $reportDate, hours: $hours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTaskSBSRecordDao &&
            (identical(other.recordID, recordID) ||
                other.recordID == recordID) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.reportDate, reportDate) ||
                other.reportDate == reportDate) &&
            (identical(other.hours, hours) || other.hours == hours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, recordID, details, reportDate, hours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTaskSBSRecordDaoCopyWith<_$_ApiTaskSBSRecordDao> get copyWith =>
      __$$_ApiTaskSBSRecordDaoCopyWithImpl<_$_ApiTaskSBSRecordDao>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTaskSBSRecordDaoToJson(
      this,
    );
  }
}

abstract class _ApiTaskSBSRecordDao implements ApiTaskSBSRecordDao {
  const factory _ApiTaskSBSRecordDao(
      {required final int recordID,
      required final String details,
      required final DateTime reportDate,
      required final String hours}) = _$_ApiTaskSBSRecordDao;

  factory _ApiTaskSBSRecordDao.fromJson(Map<String, dynamic> json) =
      _$_ApiTaskSBSRecordDao.fromJson;

  @override
  int get recordID;
  @override
  String get details;
  @override
  DateTime get reportDate;
  @override
  String get hours;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTaskSBSRecordDaoCopyWith<_$_ApiTaskSBSRecordDao> get copyWith =>
      throw _privateConstructorUsedError;
}
