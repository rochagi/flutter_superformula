import 'package:dio/dio.dart';



class ApiDioInterception implements Interceptor {

  @override
  void onError(DioException e, ErrorInterceptorHandler handler) {
    // late DioException? dioException;

    // if (e.response?.statusCode == 400) {
    //   dioException = DioException(
    //       requestOptions: e.requestOptions,
    //       error: ApiDataException(
    //           message:
    //               "${e.response?.data['message']} | statusCode: ${e.response?.statusCode}",
    //           stackTrace: StackTrace.current));
    //   handler.next(dioException);
    //   return;
    // }
    // if (e.response?.statusCode == 401) {
    //   dioException = DioException(
    //       requestOptions: e.requestOptions,
    //       error: ApiTokenException(
    //           message: "Token expirado | statusCode: ${e.response?.statusCode}",
    //           stackTrace: StackTrace.current));
    //   handler.next(dioException);
    //   return;
    // }
    // switch (e.type) {
    //   case DioExceptionType.connectionError:
    //     dioException = DioException(
    //         requestOptions: e.requestOptions,
    //         error: ApiWifiException(
    //             message:
    //                 "${S.current.withoutWifiConnection} | statusCode: ${e.response?.statusCode}",
    //             stackTrace: StackTrace.current));
    //     break;
    //   case DioExceptionType.connectionTimeout:
    //     dioException = DioException(
    //         requestOptions: e.requestOptions,
    //         error: ApiLocalConnectionException(
    //             message:
    //                 "${S.current.errorOnConnectToTGC} | statusCode: ${e.response?.statusCode}",
    //             stackTrace: StackTrace.current));
    //     break;
    //   case DioExceptionType.badResponse:
    //     dioException = DioException(
    //         requestOptions: e.requestOptions,
    //         error: ApiDataException(
    //             message:
    //                 "${S.current.errorOnConnectToTGC} | statusCode: ${e.response?.statusCode}",
    //             stackTrace: StackTrace.current));
    //     break;
    //   default:
    //     dioException = DioException(
    //       requestOptions: e.requestOptions,
    //       error: ApiLocalConnectionException(
    //         message: S.current.errorOnConnectToTGC,
    //         stackTrace: StackTrace.current,
    //       ),
    //     );
    // }

   
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }
}
