import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import '../client_response.dart';
import '../i_api_client.dart';

final class ApiClientDioImpl implements IApiClient {
  final Dio dio;

  ApiClientDioImpl({
    required this.dio,
  });

  @override
  Future<ClientResponse> get({
    required String endpoint,
    Map<String, dynamic> queryParams = const {},
    Map<String, dynamic> headers = const {},
  }) async {
    try {
      final response = await dio.get(endpoint,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ));

      return ClientResponse(
        data: response.data,
        statusCode: response.statusCode ?? 200,
        statusMessage: response.statusMessage ?? '',
      );
    } on DioException catch (e) {
      throw e.error as Exception;
    }
  }

  @override
  Future<ClientResponse> post({
    required String endpoint,
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> body = const {},
    Map<String, dynamic> queryParams = const {},
  }) async {
    try {
      log(json.encode(body));
      final response = await dio.post(
        endpoint,
        data: json.encode(body),
        queryParameters: queryParams,
        options: Options(
          headers: headers,
        ),
      );

      return ClientResponse(
        data: response.data,
        statusCode: response.statusCode ?? 200,
        statusMessage: response.statusMessage ?? '',
      );
    } on DioException catch (e) {
      throw e.error as Exception;
    }
  }
}
