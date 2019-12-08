import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:assignment_system/api/model/built_course.dart';

part 'built_courses.g.dart';
abstract class BuiltCourses implements Built<BuiltCourses, BuiltCoursesBuilder> {

  BuiltList<BuiltCourse> get courses;

  BuiltCourses._();

  factory BuiltCourses([updates(BuiltCoursesBuilder b)]) = _$BuiltCourses;

  static Serializer<BuiltCourses> get serializer => _$builtCoursesSerializer;

}