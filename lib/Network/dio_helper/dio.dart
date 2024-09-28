import 'package:dio/dio.dart';

class DioHelper
{
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://92.205.130.181/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String urlEndPoint,
  }) async {

    return await dio!.get(
      urlEndPoint,
    );
  }

//   static Future<Response> postData({
//     required String url,
//     dynamic query,
//     required dynamic data,
//     String lang = 'en',
//     String? token ,
//   }) async {
//
//     dio!.options.headers = {
//       "Content-Type" : "application/json",
//       "lang" : lang,
//       'Authorization' : token
//     } ;
//     return await dio!.post(
//       url,
//       queryParameters: query ,
//       data: data,
//     );
//   }
 }