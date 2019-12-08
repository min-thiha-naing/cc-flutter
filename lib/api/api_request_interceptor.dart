import 'dart:async';

import 'package:chopper/chopper.dart';

class ApiRequestInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    Map<String, dynamic> requestParameters = request.parameters;
    Map<String, String> query = {
      "api_key": "TwxyrZRPk2VjeXVjjPvrAtiH4R2y/0L1ei7ozY0FZ2E="
    };
    requestParameters.addAll(query);
    final newRequest = request.replace(parameters: requestParameters);
    return newRequest;
  }

}