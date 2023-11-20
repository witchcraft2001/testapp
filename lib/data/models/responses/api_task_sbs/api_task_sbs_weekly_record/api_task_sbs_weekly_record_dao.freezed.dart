// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_task_sbs_weekly_record_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiTaskSbsWeeklyRecordDao _$ApiTaskSbsWeeklyRecordDaoFromJson(
    Map<String, dynamic> json) {
  return _ApiTaskSbsWeeklyRecordDao.fromJson(json);
}

/// @nodoc
mixin _$ApiTaskSbsWeeklyRecordDao {
  @JsonKey(name: 'recordID')
  int get recordId => throw _privateConstructorUsedError;
  String get details => throw _privateConstructorUsedError;
  DateTime get reportDate => throw _privateConstructorUsedError;
  String get hours => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTaskSbsWeeklyRecordDaoCopyWith<ApiTaskSbsWeeklyRecordDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTaskSbsWeeklyRecordDaoCopyWith<$Res> {
  factory $ApiTaskSbsWeeklyRecordDaoCopyWith(ApiTaskSbsWeeklyRecordDao value,
          $Res Function(ApiTaskSbsWeeklyRecordDao) then) =
      _$ApiTaskSbsWeeklyRecordDaoCopyWithImpl<$Res, ApiTaskSbsWeeklyRecordDao>;
  @useResult
  $Res call(
      {@JsonKey(name: 'recordID') int recordId,
      String details,
      DateTime reportDate,
      String hours});
}

/// @nodoc
class _$ApiTaskSbsWeeklyRecordDaoCopyWithImpl<$Res,
        $Val extends ApiTaskSbsWeeklyRecordDao>
    implements $ApiTaskSbsWeeklyRecordDaoCopyWith<$Res> {
  _$ApiTaskSbsWeeklyRecordDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = null,
    Object? details = null,
    Object? reportDate = null,
    Object? hours = null,
  }) {
    return _then(_value.copyWith(
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ApiTaskSbsWeeklyRecordDaoCopyWith<$Res>
    implements $ApiTaskSbsWeeklyRecordDaoCopyWith<$Res> {
  factory _$$_ApiTaskSbsWeeklyRecordDaoCopyWith(
          _$_ApiTaskSbsWeeklyRecordDao value,
          $Res Function(_$_ApiTaskSbsWeeklyRecordDao) then) =
      __$$_ApiTaskSbsWeeklyRecordDaoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'recordID') int recordId,
      String details,
      DateTime reportDate,
      String hours});
}

/// @nodoc
class __$$_ApiTaskSbsWeeklyRecordDaoCopyWithImpl<$Res>
    extends _$ApiTaskSbsWeeklyRecordDaoCopyWithImpl<$Res,
        _$_ApiTaskSbsWeeklyRecordDao>
    implements _$$_ApiTaskSbsWeeklyRecordDaoCopyWith<$Res> {
  __$$_ApiTaskSbsWeeklyRecordDaoCopyWithImpl(
      _$_ApiTaskSbsWeeklyRecordDao _value,
      $Res Function(_$_ApiTaskSbsWeeklyRecordDao) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordId = null,
    Object? details = null,
    Object? reportDate = null,
    Object? hours = null,
  }) {
    return _then(_$_ApiTaskSbsWeeklyRecordDao(
      recordId: null == recordId
          ? _value.recordId
          : recordId // ignore: cast_nullable_to_non_nullable
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
class _$_ApiTaskSbsWeeklyRecordDao implements _ApiTaskSbsWeeklyRecordDao {
  const _$_ApiTaskSbsWeeklyRecordDao(
      {@JsonKey(name: 'recordID') required this.recordId,
      required this.details,
      required this.reportDate,
      required this.hours});

  factory _$_ApiTaskSbsWeeklyRecordDao.fromJson(Map<String, dynamic> json) =>
      _$$_ApiTaskSbsWeeklyRecordDaoFromJson(json);

  @override
  @JsonKey(name: 'recordID')
  final int recordId;
  @override
  final String details;
  @override
  final DateTime reportDate;
  @override
  final String hours;

  @override
  String toString() {
    return 'ApiTaskSbsWeeklyRecordDao(recordId: $recordId, details: $details, reportDate: $reportDate, hours: $hours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiTaskSbsWeeklyRecordDao &&
            (identical(other.recordId, recordId) ||
                other.recordId == recordId) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.reportDate, reportDate) ||
                other.reportDate == reportDate) &&
            (identical(other.hours, hours) || other.hours == hours));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, recordId, details, reportDate, hours);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiTaskSbsWeeklyRecordDaoCopyWith<_$_ApiTaskSbsWeeklyRecordDao>
      get copyWith => __$$_ApiTaskSbsWeeklyRecordDaoCopyWithImpl<
          _$_ApiTaskSbsWeeklyRecordDao>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiTaskSbsWeeklyRecordDaoToJson(
      this,
    );
  }
}

abstract class _ApiTaskSbsWeeklyRecordDao implements ApiTaskSbsWeeklyRecordDao {
  const factory _ApiTaskSbsWeeklyRecordDao(
      {@JsonKey(name: 'recordID') required final int recordId,
      required final String details,
      required final DateTime reportDate,
      required final String hours}) = _$_ApiTaskSbsWeeklyRecordDao;

  factory _ApiTaskSbsWeeklyRecordDao.fromJson(Map<String, dynamic> json) =
      _$_ApiTaskSbsWeeklyRecordDao.fromJson;

  @override
  @JsonKey(name: 'recordID')
  int get recordId;
  @override
  String get details;
  @override
  DateTime get reportDate;
  @override
  String get hours;
  @override
  @JsonKey(ignore: true)
  _$$_ApiTaskSbsWeeklyRecordDaoCopyWith<_$_ApiTaskSbsWeeklyRecordDao>
      get copyWith => throw _privateConstructorUsedError;
}
