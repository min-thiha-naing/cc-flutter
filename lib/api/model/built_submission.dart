import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';


part 'built_submission.g.dart';

abstract class BuiltSubmission implements Built<BuiltSubmission, BuiltSubmissionBuilder> {
  int get submission_id;
  @BuiltValueField(wireName: "user_id")
  int get userid;
  @BuiltValueField(wireName: "assignment_id")
  int get assignmentid;
  @BuiltValueField(wireName: "course_id")
  int get courseid;
  int get score;
  String get status;
  String get remark;
  @BuiltValueField(wireName: "submitted_file")
  int get submittedfile;


  BuiltSubmission._();

  factory BuiltSubmission([updates(BuiltSubmissionBuilder b)]) = _$BuiltSubmission;

  static Serializer<BuiltSubmission> get serializer => _$builtSubmissionSerializer;

}