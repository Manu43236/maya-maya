import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:maya_maya_architecture/base/config/env.dart';

import 'network_check_service.dart';

enum Method { post, get, put, delete, patch }

class DioClient with NetworkCheckService {
  late Dio dio;

  //this is for header
  static header() => {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${Env().bearerToken}',
      };

  init() {
    print(Env().bearerToken);
    dio = Dio(BaseOptions(baseUrl: Env().baseURL, headers: header()));


    initInterceptors();
    return this;
  }

  void initInterceptors() {
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      print('REQUEST[${options.method}] => PATH: ${options.path} '
          '=> Request Values: ${options.queryParameters}, => HEADERS: ${options.headers}');
      return handler.next(options);
    }, onResponse: (response, handler) {
      print('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
      return handler.next(response);
    }, onError: (err, handler) {
      print('ERROR[${err.response?.statusCode}]');
      return handler.next(err);
    }));

   
  }

  Future<Either<Response, Exception>> request(String url, Method method,
      {params}) async {
    Response response;

    try {
      if (method == Method.post) {
        response = await dio.post(url, data: params);
      } else if (method == Method.put) {
        response = await dio.put(url, data: params);
      } else if (method == Method.delete) {
        response = await dio.delete(url);
      } else if (method == Method.patch) {
        response = await dio.patch(url, queryParameters: params);
      } else {
        response = await dio.get(
          url,
          queryParameters: params,
        );
      }

      if (response.statusCode == 200) {
        return Left(response);
      } else if (response.statusCode == 401) {
        throw Right(Exception("Unauthorized"));
      } else if (response.statusCode == 500) {
        throw Right(Exception("Server Error"));
      } else {
        throw Right(Exception("Something Went Wrong"));
      }
    } on SocketException {
      throw Right(Exception("No Internet Connection"));
    } on FormatException {
      throw Right(Exception("Bad Response Format!"));
    } on DioException catch (e) {
      throw Right(Exception(e));
    } catch (e) {
      throw Right(Exception("Something Went Wrong"));
    }
  }
}
