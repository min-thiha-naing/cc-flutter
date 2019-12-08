import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'built_assignment.dart';
import 'built_course.dart';
import 'built_submission.dart';
import 'built_courses.dart';

part 'serializers.g.dart';

@SerializersFor(const [BuiltAssignment, BuiltCourse])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();