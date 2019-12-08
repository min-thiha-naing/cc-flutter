import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:assignment_system/api/model/built_assignment.dart';

part 'built_course.g.dart';

abstract class BuiltCourse implements Built<BuiltCourse, BuiltCourseBuilder> {
  int get course_id;
  @BuiltValueField(wireName: "course_name")
  String get coursename;
  @BuiltValueField(wireName: "course_title")
  String get coursetitle;
  String get description;
  BuiltList<BuiltAssignment> get assignments;

  BuiltCourse._();

  factory BuiltCourse([updates(BuiltCourseBuilder b)]) = _$BuiltCourse;

  static Serializer<BuiltCourse> get serializer => _$builtCourseSerializer;

}