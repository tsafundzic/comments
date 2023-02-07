import 'package:dio/dio.dart';

void resolveDioError(DioError dioError) {
  var response = dioError.response;
  if (response != null) {
    switch (response.statusCode) {
      default:
        throw Exception("Error with statusCode: ${response.statusCode} - message: ${response.statusMessage}");
    }
  } else {
    throw Exception("response = null");
  }
}
