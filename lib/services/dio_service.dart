import 'dart:developer';
import 'package:dio/dio.dart';

class DioService {
  Dio dio = Dio();
  Future<dynamic> getMethod(String url) async {
    dio.options.headers['content-Type'] = 'application/json';
    return await dio
        .get(url,
            options: Options(responseType: ResponseType.json, method: 'GET'))
        .then((response) {
      log(response.toString());
      return response;
    });
  }

  Future<dynamic> postMethod(Map<String, dynamic> map, String url) async {
    dio.options.headers['content-Type'] = 'application/json';
    return await dio
        .post(url,
            data: map,
            options: Options(
              responseType: ResponseType.json,
              method: 'POST',
            ))
        .then((value) {
      log(value.headers.toString());
      log(value.data.toString());
      log(value.statusCode.toString());
      return value;
    });
  }
}










// import 'dart:developer';
// import 'package:dio/dio.dart';
// import 'package:dio/dio.dart' as dio_service;

// class DioService {
//   Dio dio = Dio();

//   Future<dynamic> getMethod(String url) async {
//     return await dio
//         .get(url,
//             options: Options(responseType: ResponseType.json, method: 'GET'))
//         .then((response) {
//       log(response.toString());
//       return response;
//     }).catchError((err) {
//       if (err is DioError) {
//         return err.response!;
//       }
//     });
//   }

//   Future<dynamic> postMethod(Map<String, dynamic> map, String url) async {
//     dio.options.headers['content-Type'] = 'application/json';
//     // var token = GetStorage().read(StorageKey.token);
//     // if (token != null) {
//     //   dio.options.headers['authorization'] = '$token';
//     // }

//     return await dio
//         .post(url,
//             data: dio_service.FormData.fromMap(map),
//             options: Options(responseType: ResponseType.json, method: 'POST'))
//         .then((response) {
//       log(response.headers.toString());
//       log(response.data.toString());
//       log(response.statusCode.toString());
//       return response;
//     }).catchError((err) {
//       log(err.toString());
//       if (err is DioError) {
//         return err.response!;
//       }
//     });
//   }
// }
