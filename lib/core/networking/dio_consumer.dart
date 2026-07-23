// import 'package:dio/dio.dart';

// import 'api_consumer.dart';
// import 'api_interceptors.dart';

// class DioConsumer extends ApiConsumer {
//   final Dio dio;

//   DioConsumer(this.dio) {
//     dio.options = BaseOptions(
//       connectTimeout: const Duration(seconds: 30),
//       receiveTimeout: const Duration(seconds: 30),
//       sendTimeout: const Duration(seconds: 30),
//       responseType: ResponseType.json,
//     );
//     dio.interceptors.add(ApiInterceptors());
//   }
//   @override
//   Future get(
//     String path, {
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//   }) async {
//     final response = await dio.get(
//       path,
//       queryParameters: queryParameters,
//       options: options,
//     );
//     return response.data;
//   }

//   @override
//   Future post(
//     String path, {
//     data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//   }) async {
//     final response = await dio.post(
//       path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//     );
//     return response.data;
//   }

//   @override
//   Future put(
//     String path, {
//     data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//   }) async {
//     final response = await dio.put(
//       path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//     );
//     return response.data;
//   }

//   @override
//   Future patch(
//     String path, {
//     data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//   }) async {
//     final response = await dio.patch(
//       path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//     );
//     return response.data;
//   }

//   @override
//   Future delete(
//     String path, {
//     data,
//     Map<String, dynamic>? queryParameters,
//     Options? options,
//   }) async {
//     final response = await dio.delete(
//       path,
//       data: data,
//       queryParameters: queryParameters,
//       options: options,
//     );
//     return response.data;
//   }
// }
