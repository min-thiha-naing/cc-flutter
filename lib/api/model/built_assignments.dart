import 'package:assignment_system/api/model/built_assignment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';


part 'built_assignments.g.dart';
abstract class BuiltAssignments implements Built<BuiltAssignments, BuiltAssignmentsBuilder> {

  BuiltList<BuiltAssignment> get assignments;

  BuiltAssignments._();

  factory BuiltAssignments([updates(BuiltAssignmentsBuilder b)]) = _$BuiltAssignments;

  static Serializer<BuiltAssignments> get serializer => _$builtAssignmentsSerializer;

}