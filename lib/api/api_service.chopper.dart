// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ApiService;

  Future<Response<BuiltCourses>> getCourses() {
    final $url = '/courses';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltCourses, BuiltCourses>($request);
  }

  Future<Response<BuiltCourse>> createCourses(Map<String, dynamic> body) {
    final $url = '/course/store';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BuiltCourse, BuiltCourse>($request);
  }

  Future<Response<BuiltCourse>> getCoursesByOwner(Map<String, dynamic> query) {
    final $url = '/course/{teacher_id}';
    final $params = query;
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltCourse, BuiltCourse>($request);
  }

  Future<Response<BuiltAssignment>> getAssignments(Map<String, dynamic> query) {
    final $url = '/assignments/{course_id}';
    final $params = query;
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltAssignment, BuiltAssignment>($request);
  }

  Future<Response<BuiltAssignment>> createAssignment(
      Map<String, dynamic> body) {
    final $url = '/assignment/store';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BuiltAssignment, BuiltAssignment>($request);
  }

  Future<Response<BuiltSubmission>> getSubmissionByAssignment(
      Map<String, dynamic> query) {
    final $url = '/submissions/assignment{assignment_id}';
    final $params = query;
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<BuiltSubmission, BuiltSubmission>($request);
  }

  Future<Response<BuiltAssignment>> createFileByStudent(
      Map<String, dynamic> body) {
    final $url = '/submission/store';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BuiltAssignment, BuiltAssignment>($request);
  }
}
