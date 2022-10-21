import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../../../utils/constants.dart';
import 'api_response.dart';
import 'error_handler.dart';

class ApiHelpers {
  ApiHelpers._();

  static Future makeGetRequest(
    String url, {
    Map<String, String>? headers,
  }) async {
    var uri = Uri.parse(url);
    var resp = {};

    try {
      http.Response response = await http
          .get(
            uri,
            headers: headers ?? {},
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));
      if (kDebugMode) {
        log(response.body);
      }
    } on SocketException {
      resp = apiResponse(
        data: {'status': false, 'message': 'No Internet Connection'},
      );
    } on FormatException {
      resp = apiResponse(
        data: {'status': false, 'message': 'Invalid Response Format.'},
      );
    } on TimeoutException {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Connection Timed out. Please try again later.'
      });
    } on Exception {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Something went wrong. Please try again later.'
      });
    }
    return resp;
  }

  static Future makePostRequest(String url, Map payload,
      {Map<String, String>? headers}) async {
    var uri = Uri.parse(url);
    var resp = {};
    try {
      http.Response response = await http
          .post(
            uri,
            body: payload,
            headers: headers ?? {},
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));
      if (response.statusCode < 200 || response.statusCode > 226) {
        resp = apiResponse(
            message: HttpErrorHandler.statusMessage(response.statusCode),
            status: false,
            data: json.decode(response.body));
      } else {
        resp = apiResponse(
            message: response.statusCode.toString(),
            status: true,
            data: json.decode(response.body));
      }

      // log(response.body);

    } on SocketException {
      resp = apiResponse(
        data: {'status': false, 'message': 'No Internet Connection'},
      );
    } on FormatException {
      resp = apiResponse(
        data: {'status': false, 'message': 'Invalid Response Format.'},
      );
    } on TimeoutException {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Connection Timed out. Please try again later.'
      });
    } on Exception {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Something went wrong. Please try again later.'
      });
    }

    return resp;
  }

  static Future makePatchRequest(String url, Map payload,
      {Map<String, String>? headers}) async {
    var uri = Uri.parse(url);

    var resp = {};

    try {
      http.Response response = await http
          .patch(
            uri,
            body: payload,
            headers: headers ?? {},
          )
          .timeout(const Duration(milliseconds: AppConstants.connectTimeout));
      if (response.statusCode < 200 || response.statusCode > 226) {
        resp = apiResponse(
            message: HttpErrorHandler.statusMessage(response.statusCode),
            status: false,
            data: json.decode(response.body));
      } else {
        resp = apiResponse(
            message: response.statusCode.toString(),
            status: true,
            data: json.decode(response.body));
      }
    } on SocketException {
      resp = apiResponse(
        data: {'status': false, 'message': 'No Internet Connection'},
      );
    } on FormatException {
      resp = apiResponse(
        data: {'status': false, 'message': 'Invalid Response Format.'},
      );
    } on TimeoutException {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Connection Timed out. Please try again later.'
      });
    } on Exception {
      resp = apiResponse(data: {
        'status': false,
        'message': 'Something went wrong. Please try again later.'
      });
    }
    return resp;
  }
}
