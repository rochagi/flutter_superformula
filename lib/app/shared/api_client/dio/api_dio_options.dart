import 'package:dio/dio.dart';

final dioOptions = BaseOptions(
  connectTimeout: const Duration(seconds: 60),
  receiveTimeout: const Duration(seconds: 120),
  sendTimeout: const Duration(seconds: 60),
);
