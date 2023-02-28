// ignore_for_file: library_prefixes

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart' as DIO;
import 'package:ups_education/app/data/config/config.dart';

Future<DIO.Response<dynamic>> dioGet(String endUrl) async {
  var dio = DIO.Dio();
  if (getBox.read(USER_LOGIN) ?? false) {
  dio.options.headers['Authorization'] =
      "Bearer ${getBox.read(USER_ID) ?? ''}";
  }

  var response = await dio.get(
    "$BASE_URL$endUrl",
    options: DIO.Options(
      validateStatus: (status) => true,
      sendTimeout: 100000,
      receiveTimeout: 15000,
    ),
  );
  isDebugMode.value
      ? log(
          "\n\nGET: $endUrl\nSTATUS CODE: ${response.statusCode}\n${jsonEncode(response.data)}\n\n")
      : null;
  return response;
}

Future<DIO.Response<dynamic>> dioUGet(String endUrl) async {
  var dio = DIO.Dio();

  var response = await dio.get(
    endUrl,
    options: DIO.Options(
      validateStatus: (status) => true,
      sendTimeout: 100000,
      receiveTimeout: 15000,
    ),
  );
  isDebugMode.value
      ? log(
          "\n\nGET: $endUrl\nSTATUS CODE: ${response.statusCode}\n${jsonEncode(response.data)}\n\n")
      : null;
  return response;
}
