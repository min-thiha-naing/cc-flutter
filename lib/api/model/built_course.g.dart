// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_course.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltCourse> _$builtCourseSerializer = new _$BuiltCourseSerializer();

class _$BuiltCourseSerializer implements StructuredSerializer<BuiltCourse> {
  @override
  final Iterable<Type> types = const [BuiltCourse, _$BuiltCourse];
  @override
  final String wireName = 'BuiltCourse';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltCourse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'course_id',
      serializers.serialize(object.course_id,
          specifiedType: const FullType(int)),
      'course_name',
      serializers.serialize(object.coursename,
          specifiedType: const FullType(String)),
      'course_title',
      serializers.serialize(object.coursetitle,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'assignments',
      serializers.serialize(object.assignments,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BuiltAssignment)])),
    ];

    return result;
  }

  @override
  BuiltCourse deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltCourseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'course_id':
          result.course_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'course_name':
          result.coursename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'course_title':
          result.coursetitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assignments':
          result.assignments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltAssignment)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltCourse extends BuiltCourse {
  @override
  final int course_id;
  @override
  final String coursename;
  @override
  final String coursetitle;
  @override
  final String description;
  @override
  final BuiltList<BuiltAssignment> assignments;

  factory _$BuiltCourse([void Function(BuiltCourseBuilder) updates]) =>
      (new BuiltCourseBuilder()..update(updates)).build();

  _$BuiltCourse._(
      {this.course_id,
      this.coursename,
      this.coursetitle,
      this.description,
      this.assignments})
      : super._() {
    if (course_id == null) {
      throw new BuiltValueNullFieldError('BuiltCourse', 'course_id');
    }
    if (coursename == null) {
      throw new BuiltValueNullFieldError('BuiltCourse', 'coursename');
    }
    if (coursetitle == null) {
      throw new BuiltValueNullFieldError('BuiltCourse', 'coursetitle');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('BuiltCourse', 'description');
    }
    if (assignments == null) {
      throw new BuiltValueNullFieldError('BuiltCourse', 'assignments');
    }
  }

  @override
  BuiltCourse rebuild(void Function(BuiltCourseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltCourseBuilder toBuilder() => new BuiltCourseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltCourse &&
        course_id == other.course_id &&
        coursename == other.coursename &&
        coursetitle == other.coursetitle &&
        description == other.description &&
        assignments == other.assignments;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, course_id.hashCode), coursename.hashCode),
                coursetitle.hashCode),
            description.hashCode),
        assignments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltCourse')
          ..add('course_id', course_id)
          ..add('coursename', coursename)
          ..add('coursetitle', coursetitle)
          ..add('description', description)
          ..add('assignments', assignments))
        .toString();
  }
}

class BuiltCourseBuilder implements Builder<BuiltCourse, BuiltCourseBuilder> {
  _$BuiltCourse _$v;

  int _course_id;
  int get course_id => _$this._course_id;
  set course_id(int course_id) => _$this._course_id = course_id;

  String _coursename;
  String get coursename => _$this._coursename;
  set coursename(String coursename) => _$this._coursename = coursename;

  String _coursetitle;
  String get coursetitle => _$this._coursetitle;
  set coursetitle(String coursetitle) => _$this._coursetitle = coursetitle;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<BuiltAssignment> _assignments;
  ListBuilder<BuiltAssignment> get assignments =>
      _$this._assignments ??= new ListBuilder<BuiltAssignment>();
  set assignments(ListBuilder<BuiltAssignment> assignments) =>
      _$this._assignments = assignments;

  BuiltCourseBuilder();

  BuiltCourseBuilder get _$this {
    if (_$v != null) {
      _course_id = _$v.course_id;
      _coursename = _$v.coursename;
      _coursetitle = _$v.coursetitle;
      _description = _$v.description;
      _assignments = _$v.assignments?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltCourse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltCourse;
  }

  @override
  void update(void Function(BuiltCourseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltCourse build() {
    _$BuiltCourse _$result;
    try {
      _$result = _$v ??
          new _$BuiltCourse._(
              course_id: course_id,
              coursename: coursename,
              coursetitle: coursetitle,
              description: description,
              assignments: assignments.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'assignments';
        assignments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltCourse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
