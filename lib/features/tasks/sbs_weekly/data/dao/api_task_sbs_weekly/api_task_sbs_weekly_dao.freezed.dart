// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_task_sbs_weekly_dao.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiTaskSbsWeeklyDao _$ApiTaskSbsWeeklyDaoFromJson(Map<String, dynamic> json) {
  return _ApiTaskSbsWeeklyDao.fromJson(json);
}

/// @nodoc
mixin _$ApiTaskSbsWeeklyDao {
  @JsonKey(name: 'projectSbsId')
  int get projectId => throw _privateConstructorUsedError;
  String get projectName => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get pmName => throw _privateConstructorUsedError;
  String get amName => throw _privateConstructorUsedError;
  @JsonKey(name: 'consultantsWithRecords')
  List<ApiTaskSbsWeeklyConsultantDao> get consultants =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiTaskSbsWeeklyDaoCopyWith<ApiTaskSbsWeeklyDao> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiTaskSbsWeeklyDaoCopyWith<$Res> {
  factory $ApiTaskSbsWeeklyDaoCopyWith(
          ApiTaskSbsWeeklyDao value, $Res Function(ApiTaskSbsWeeklyDao) then) =
      _$ApiTaskSbsWeeklyDaoCopyWithImpl<$Res, ApiTaskSbsWeeklyDao>;
  @useResult
  $Res call(
      {@JsonKey(name: 'projectSbsId') int projectId,
      String projectName,
      String company,
      String pmName,
      String amName,
      @JsonKey(name: 'consultantsWithRecords')
      List<ApiTaskSbsWeeklyConsultantDao> consultants});
}

/// @nodoc
class _$ApiTaskSbsWeeklyDaoCopyWithImpl<$Res, $Val extends ApiTaskSbsWeeklyDao>
    implements $ApiTaskSbsWeeklyDaoCopyWith<$Res> {
  _$ApiTaskSbsWeeklyDaoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? company = null,
    Object? pmName = null,
    Object? amName = null,
    Object? consultants = null,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      pmName: null == pmName
          ? _value.pmName
          : pmName // ignore: cast_nullable_to_non_nullable
              as String,
      amName: null == amName
          ? _value.amName
          : amName // ignore: cast_nullable_to_non_nullable
              as String,
      consultants: null == consultants
          ? _value.consultants
          : consultants // ignore: cast_nullable_to_non_nullable
              as List<ApiTaskSbsWeeklyConsultantDao>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiTaskSbsWeeklyDaoImplCopyWith<$Res>
    implements $ApiTaskSbsWeeklyDaoCopyWith<$Res> {
  factory _$$ApiTaskSbsWeeklyDaoImplCopyWith(_$ApiTaskSbsWeeklyDaoImpl value,
          $Res Function(_$ApiTaskSbsWeeklyDaoImpl) then) =
      __$$ApiTaskSbsWeeklyDaoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'projectSbsId') int projectId,
      String projectName,
      String company,
      String pmName,
      String amName,
      @JsonKey(name: 'consultantsWithRecords')
      List<ApiTaskSbsWeeklyConsultantDao> consultants});
}

/// @nodoc
class __$$ApiTaskSbsWeeklyDaoImplCopyWithImpl<$Res>
    extends _$ApiTaskSbsWeeklyDaoCopyWithImpl<$Res, _$ApiTaskSbsWeeklyDaoImpl>
    implements _$$ApiTaskSbsWeeklyDaoImplCopyWith<$Res> {
  __$$ApiTaskSbsWeeklyDaoImplCopyWithImpl(_$ApiTaskSbsWeeklyDaoImpl _value,
      $Res Function(_$ApiTaskSbsWeeklyDaoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? company = null,
    Object? pmName = null,
    Object? amName = null,
    Object? consultants = null,
  }) {
    return _then(_$ApiTaskSbsWeeklyDaoImpl(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      pmName: null == pmName
          ? _value.pmName
          : pmName // ignore: cast_nullable_to_non_nullable
              as String,
      amName: null == amName
          ? _value.amName
          : amName // ignore: cast_nullable_to_non_nullable
              as String,
      consultants: null == consultants
          ? _value._consultants
          : consultants // ignore: cast_nullable_to_non_nullable
              as List<ApiTaskSbsWeeklyConsultantDao>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiTaskSbsWeeklyDaoImpl implements _ApiTaskSbsWeeklyDao {
  const _$ApiTaskSbsWeeklyDaoImpl(
      {@JsonKey(name: 'projectSbsId') required this.projectId,
      required this.projectName,
      required this.company,
      required this.pmName,
      required this.amName,
      @JsonKey(name: 'consultantsWithRecords')
      required final List<ApiTaskSbsWeeklyConsultantDao> consultants})
      : _consultants = consultants;

  factory _$ApiTaskSbsWeeklyDaoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiTaskSbsWeeklyDaoImplFromJson(json);

  @override
  @JsonKey(name: 'projectSbsId')
  final int projectId;
  @override
  final String projectName;
  @override
  final String company;
  @override
  final String pmName;
  @override
  final String amName;
  final List<ApiTaskSbsWeeklyConsultantDao> _consultants;
  @override
  @JsonKey(name: 'consultantsWithRecords')
  List<ApiTaskSbsWeeklyConsultantDao> get consultants {
    if (_consultants is EqualUnmodifiableListView) return _consultants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_consultants);
  }

  @override
  String toString() {
    return 'ApiTaskSbsWeeklyDao(projectId: $projectId, projectName: $projectName, company: $company, pmName: $pmName, amName: $amName, consultants: $consultants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiTaskSbsWeeklyDaoImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.pmName, pmName) || other.pmName == pmName) &&
            (identical(other.amName, amName) || other.amName == amName) &&
            const DeepCollectionEquality()
                .equals(other._consultants, _consultants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, projectName, company,
      pmName, amName, const DeepCollectionEquality().hash(_consultants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiTaskSbsWeeklyDaoImplCopyWith<_$ApiTaskSbsWeeklyDaoImpl> get copyWith =>
      __$$ApiTaskSbsWeeklyDaoImplCopyWithImpl<_$ApiTaskSbsWeeklyDaoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiTaskSbsWeeklyDaoImplToJson(
      this,
    );
  }
}

abstract class _ApiTaskSbsWeeklyDao implements ApiTaskSbsWeeklyDao {
  const factory _ApiTaskSbsWeeklyDao(
          {@JsonKey(name: 'projectSbsId') required final int projectId,
          required final String projectName,
          required final String company,
          required final String pmName,
          required final String amName,
          @JsonKey(name: 'consultantsWithRecords')
          required final List<ApiTaskSbsWeeklyConsultantDao> consultants}) =
      _$ApiTaskSbsWeeklyDaoImpl;

  factory _ApiTaskSbsWeeklyDao.fromJson(Map<String, dynamic> json) =
      _$ApiTaskSbsWeeklyDaoImpl.fromJson;

  @override
  @JsonKey(name: 'projectSbsId')
  int get projectId;
  @override
  String get projectName;
  @override
  String get company;
  @override
  String get pmName;
  @override
  String get amName;
  @override
  @JsonKey(name: 'consultantsWithRecords')
  List<ApiTaskSbsWeeklyConsultantDao> get consultants;
  @override
  @JsonKey(ignore: true)
  _$$ApiTaskSbsWeeklyDaoImplCopyWith<_$ApiTaskSbsWeeklyDaoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
