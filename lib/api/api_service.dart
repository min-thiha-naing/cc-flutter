import 'package:assignment_system/api/api_request_interceptor.dart';
import 'package:assignment_system/api/built_value_converter.dart';
import 'package:assignment_system/api/model/built_assignment.dart';
import 'package:assignment_system/api/model/built_course.dart';
import 'package:assignment_system/api/model/built_courses.dart';
import 'package:assignment_system/api/model/built_submission.dart';
import 'package:chopper/chopper.dart';
import 'package:chopper/chopper.dart' as prefix0;

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class ApiService extends ChopperService {
  String course_name="";
  @Get(path: "courses")
  Future<Response<BuiltCourses>> getCourses(
      );

  @Post(path:"course/store")
  Future<Response<BuiltCourse>> createCourses(
      @Body() Map<String,dynamic> body,
      );

  @Get(path: "course/{teacher_id}")
  Future<Response<BuiltCourse>> getCoursesByOwner(
      @QueryMap() Map<String,dynamic> query
      );

  @Get(path: "assignments/{course_id}")
  Future<Response<BuiltAssignment>> getAssignments(
      @QueryMap() Map<String,dynamic> query
      );

  @Post(path: "assignment/store")
  Future<Response<BuiltAssignment>> createAssignment(
      @Body() Map<String,dynamic> body,
      );

  @Get(path: "submissions/assignment{assignment_id}")
  Future<Response<BuiltSubmission>> getSubmissionByAssignment(
      @QueryMap() Map<String,dynamic> query
      );

  @Post(path: 'submission/store')
  Future<Response<BuiltAssignment>> createFileByStudent(
      @Body() Map<String,dynamic> body,
      );

  static ApiService create() {
    final client = ChopperClient(
        baseUrl: "http://127.0.0.1:8000/api",
        services: [
          _$ApiService(),
        ],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
//        ApiRequestInterceptor()
        ]
    );
    return _$ApiService(client);
  }
}