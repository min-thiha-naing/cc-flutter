import 'package:assignment_system/api/model/built_assignment.dart';
import 'package:assignment_system/api/model/built_submission.dart';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';


part 'built_submissions.g.dart';
abstract class BuiltSubmissions implements Built<BuiltSubmissions, BuiltSubmissionsBuilder> {

  BuiltList<BuiltSubmission> get submissons;

  BuiltSubmissions._();

  factory BuiltSubmissions([updates(BuiltSubmissionsBuilder b)]) = _$BuiltSubmissions;

  static Serializer<BuiltSubmissions> get serializer => _$builtSubmissionsSerializer;

}