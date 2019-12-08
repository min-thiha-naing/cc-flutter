import 'package:assignment_system/api/model/built_submission.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:assignment_system/api/model/built_submission.dart';

part 'built_assignment.g.dart';

abstract class BuiltAssignment implements Built<BuiltAssignment, BuiltAssignmentBuilder> {
  int get assignment_id;
  @BuiltValueField(wireName: "assignment_name")
  String get assignmentname;
  DateTime get deadline;
  String get description;
  @BuiltValueField(wireName: "class_id")
  String get classid;
  @BuiltValueField(wireName: "user_id")
  String get userid;
  BuiltList<BuiltSubmission> get submissions;


  BuiltAssignment._();

  factory BuiltAssignment([updates(BuiltAssignmentBuilder b)]) = _$BuiltAssignment;

  static Serializer<BuiltAssignment> get serializer => _$builtAssignmentSerializer;

}