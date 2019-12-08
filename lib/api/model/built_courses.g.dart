// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'built_courses.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltCourses> _$builtCoursesSerializer =
    new _$BuiltCoursesSerializer();

class _$BuiltCoursesSerializer implements StructuredSerializer<BuiltCourses> {
  @override
  final Iterable<Type> types = const [BuiltCourses, _$BuiltCourses];
  @override
  final String wireName = 'BuiltCourses';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltCourses object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'courses',
      serializers.serialize(object.courses,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BuiltCourse)])),
    ];

    return result;
  }

  @override
  BuiltCourses deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltCoursesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'courses':
          result.courses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BuiltCourse)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltCourses extends BuiltCourses {
  @override
  final BuiltList<BuiltCourse> courses;

  factory _$BuiltCourses([void Function(BuiltCoursesBuilder) updates]) =>
      (new BuiltCoursesBuilder()..update(updates)).build();

  _$BuiltCourses._({this.courses}) : super._() {
    if (courses == null) {
      throw new BuiltValueNullFieldError('BuiltCourses', 'courses');
    }
  }

  @override
  BuiltCourses rebuild(void Function(BuiltCoursesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltCoursesBuilder toBuilder() => new BuiltCoursesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltCourses && courses == other.courses;
  }

  @override
  int get hashCode {
    return $jf($jc(0, courses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltCourses')
          ..add('courses', courses))
        .toString();
  }
}

class BuiltCoursesBuilder
    implements Builder<BuiltCourses, BuiltCoursesBuilder> {
  _$BuiltCourses _$v;

  ListBuilder<BuiltCourse> _courses;
  ListBuilder<BuiltCourse> get courses =>
      _$this._courses ??= new ListBuilder<BuiltCourse>();
  set courses(ListBuilder<BuiltCourse> courses) => _$this._courses = courses;

  BuiltCoursesBuilder();

  BuiltCoursesBuilder get _$this {
    if (_$v != null) {
      _courses = _$v.courses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltCourses other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltCourses;
  }

  @override
  void update(void Function(BuiltCoursesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltCourses build() {
    _$BuiltCourses _$result;
    try {
      _$result = _$v ?? new _$BuiltCourses._(courses: courses.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'courses';
        courses.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltCourses', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
