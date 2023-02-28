// ignore_for_file: library_prefixes

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart' as DIO;
import 'package:ups_education/app/data/config/config.dart';

// import '../app_cons.dart';

Future<DIO.Response<dynamic>> dioPost(
    {bool? isPost, dynamic data, String? endUrl, bool? sendFile}) async {
  var dio = DIO.Dio();
  if (getBox.read(USER_LOGIN) ?? false) {
    dio.options.headers['Authorization'] =
        "Bearer ${getBox.read(USER_TOKEN) ?? ''}";
  }

  sendFile ?? false
      ? dio.options.headers["Content-Type"] = "multipart/form-data"
      : null;

  if (isPost ?? true) {
    var response = await dio.post(
      "$BASE_URL$endUrl",
      data: data,
      options: DIO.Options(
        validateStatus: (status) => true,
        sendTimeout: 100000,
        receiveTimeout: 100000,
      ),
    );
    isDebugMode.value
        ? log(
            "\n\n${isPost ?? true ? 'POST:' : 'PUT'} $endUrl\nSTATUS CODE: ${response.statusCode}\n${jsonEncode(response.data)}\n\n")
        : null;

    return response;
  } else {
    var response = await dio.put(
      "$endUrl",
      data: data,
      options: DIO.Options(
        validateStatus: (status) => true,
        sendTimeout: 100000,
        receiveTimeout: 100000,
      ),
    );
    isDebugMode.value
        ? log(
            "\n\n${isPost ?? true ? 'POST:' : 'PUT'} $endUrl\nSTATUS CODE: ${response.statusCode}\n${jsonEncode(response.data)}\n\n")
        : null;
    return response;
  }
}














// import 'dart:convert';
// import 'dart:developer';

// import 'package:dio/dio.dart' as DIO;
// import 'package:ups_education/app/data/config/config.dart';


// Future<DIO.Response<dynamic>> dioPost(
//     {bool? isPost, dynamic data, String? endUrl, bool? sendFile}) async {
//   var dio = DIO.Dio();
//   // if (getBox.read(IS_USER_LOGGED_IN) ?? false) {
//   //   dio.options.headers['Authorization'] =
//   //       "Bearer ${getBox.read(USER_TOKEN) ?? ''}";
//   // }

//   sendFile ?? false
//       ? dio.options.headers["Content-Type"] = "multipart/form-data"
//       : null;

//   if (isPost ?? true) {
//     var response = await dio.post(
//       "$endUrl",
//       data: data,
//       options: DIO.Options(
//         validateStatus: (status) => true,
//         sendTimeout: 100000,
//         receiveTimeout: 100000,
//       ),
//     );
//     // isDebugMode.value
//     //     ? log(
//     //         "\n\n${isPost ?? true ? 'POST:' : 'PUT'} $endUrl\nSTATUS CODE: ${response.statusCode}\n${jsonEncode(response.data)}\n\n")
//     //     : null;

//     return response;
//   } else {
//     var response = await dio.put(
//       "$endUrl",
//       data: data,
//       options: DIO.Options(
//         validateStatus: (status) => true,
//         sendTimeout: 100000,
//         receiveTimeout: 100000,
//       ),
//     );
//     // isDebugMode.value
//     //     ? log(
//     //         "\n\n${isPost ?? true ? 'POST:' : 'PUT'} $endUrl\nSTATUS CODE: ${response.statusCode}\n${jsonEncode(response.data)}\n\n")
//     //     : null;
//     return response;
//   }
// }
