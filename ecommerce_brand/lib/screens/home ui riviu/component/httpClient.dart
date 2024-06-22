import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:io';

class AppConstants {
  static const padding = 16.0;
  static const margin = 16.0;
  static const pageSize = 12;

  static const networkMessage = 'Vui lòng kiểm tra lại kết nối mạng';
  static final apiUrl = "https://gateway-pms-dev.beonetech.vn/api/v1";
  // static final apiUrl = 'http://fsctv.ddns.net/api/v1';
  static final xPrivateKey = "zT24AeWsYphZg2NWBDHVDqeDX";
  static final ssoDomain =
      "https://pnj-tms-dev.auth.ap-southeast-1.amazoncognito.com/";
  static final ssoClientId = "3vq3sd0aa1dgh22crqr8isu16r";
  static final ssoRedirectUri = "http://localhost:3000/sign-in";
  static String sentAcceptString =
      "Bạn có chắc chắn muốn gửi những mẫu đã chọn cho cửa hàng trưởng phê duyệt?";
}

class FetchClient {
  String get domain {
    return AppConstants.apiUrl;
  }

  static String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJwbXMuYWRtaW5AcG5qLmNvbS52biIsImZ1bmN0aW9ucyI6WyJjdXN0b21lcl9nZXRfZ2kiLCJjdXN0b21lcl9hY3RpdmVfZ2kiLCJjb25maXJtX2V4cG9ydF9lbXMiLCJkZWxldGVfaW1wb3J0X2VtcyIsImNvbmZpcm1faW1wb3J0X2VtcyIsImxvZ2luX3dlYiIsImN1c3RvbWVyX3NjYW5fZ2lfY29kZSIsImFkbWluX2dldF9naSIsImN1c3RvbWVyX3NjYW5fcXJfY29kZSIsImFjdGl2aXR5X3JlY2VpdmVyIiwiaW1wb3J0X2VtcyIsImxvZ2luX2FwcCIsInNoaXBwZXJfY29uZmlybV9zaGlwbWVudF90b19kZWxpdmVyeSIsImN1c3RvbWVyX3NlYXJjaF9naSIsImFkbWluX2dldF9yZXBvcnRfa3BpIiwiYWRtaW5fZ2V0X3JlcG9ydF90b3BfcGVyZm9ybWVyIiwiYWRtaW5fZ2V0X3JlcG9ydF9xdWFsaXR5IiwiYWRtaW5fZ2V0X3JlcG9ydF9tYXN0ZXJkYXRhIiwiYWRtaW5fZ2V0X3JlcG9ydF9nb29kcyIsImFkbWluX2dldF9yZXBvcnRfY29ja3BpdCIsImFkbWluX2dldF9jbGllbnRzIiwiYWRtaW5fZ2V0X3ZlaGljbGVzIiwiYWRtaW5fZ2V0X21hcHBpbmdfam9iX3RpdGxlcyIsImFkbWluX2dldF9qb2JfdGl0bGVzIiwiYWRtaW5fZ2V0X2Z1bmN0aW9ucyIsImFkbWluX2dldF9ncm91cHMiLCJhZG1pbl9nZXRfcGxhbnRzIiwiYWRtaW5fZ2V0X3JvdXRlcyIsImFkbWluX2dldF9zaGlwbWVudHMiLCJhZG1pbl9hY3RpdmVfZ2kiLCJsb2dpbl9hZG1pbiIsImV4cG9ydF9lbXMiLCJhZG1pbl9nZXRfZ2VvbWFwIiwiYWRtaW5fZ2V0X2FjY2Vzc19jb250cm9scyIsImFkbWluX2dldF9uZXdwYWdlIiwiYWRtaW5fZ2V0X3JhdGluZyIsImFkbWluX2dldF9yZXBvcnRfZXJyb3JfY29kZSJdLCJhcHBOYW1lIjoiUE1TLUFETUlOIiwiaWF0IjoxNzEzNzY5MzYyLCJleHAiOjE3NDUzMjY5NjJ9.1lYoZAR8sdEi0EznO6g5oo28WMQ5xedcL-GcZRWYhQc';

  Dio dio = Dio();

  logRequest() {
    // dio.interceptors.add(CurlLoggerDioInterceptor(printOnSuccess: true));
    // dio.interceptors.add(PrettyDioLogger(
    //   maxWidth: 1000,
    //   requestHeader: true,
    //   requestBody: true,
    //   responseBody: true,
    //   responseHeader: false,
    //   compact: false,
    // ));
  }

  Options options() {
    var option = Options(
        headers: {
          'x-application-name': 'PMS-ADMIN',
          'accept': 'application/json, text/plain, */*',
          'accept-language': 'en-US,en;q=0.9',
          'origin': 'https://admin-pms-dev.beonetech.vn',
          'priority': 'u=1, i',
          'referer': 'https://admin-pms-dev.beonetech.vn/',
          'sec-fetch-mode': 'cors',
          'sec-fetch-site': 'same-site',
          'x-private-key': AppConstants.xPrivateKey,
          'authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJwbXMuYWRtaW5AcG5qLmNvbS52biIsImZ1bmN0aW9ucyI6WyJjdXN0b21lcl9nZXRfZ2kiLCJjdXN0b21lcl9hY3RpdmVfZ2kiLCJjb25maXJtX2V4cG9ydF9lbXMiLCJkZWxldGVfaW1wb3J0X2VtcyIsImNvbmZpcm1faW1wb3J0X2VtcyIsImxvZ2luX3dlYiIsImN1c3RvbWVyX3NjYW5fZ2lfY29kZSIsImFkbWluX2dldF9naSIsImN1c3RvbWVyX3NjYW5fcXJfY29kZSIsImFjdGl2aXR5X3JlY2VpdmVyIiwiaW1wb3J0X2VtcyIsImxvZ2luX2FwcCIsInNoaXBwZXJfY29uZmlybV9zaGlwbWVudF90b19kZWxpdmVyeSIsImN1c3RvbWVyX3NlYXJjaF9naSIsImFkbWluX2dldF9yZXBvcnRfa3BpIiwiYWRtaW5fZ2V0X3JlcG9ydF90b3BfcGVyZm9ybWVyIiwiYWRtaW5fZ2V0X3JlcG9ydF9xdWFsaXR5IiwiYWRtaW5fZ2V0X3JlcG9ydF9tYXN0ZXJkYXRhIiwiYWRtaW5fZ2V0X3JlcG9ydF9nb29kcyIsImFkbWluX2dldF9yZXBvcnRfY29ja3BpdCIsImFkbWluX2dldF9jbGllbnRzIiwiYWRtaW5fZ2V0X3ZlaGljbGVzIiwiYWRtaW5fZ2V0X21hcHBpbmdfam9iX3RpdGxlcyIsImFkbWluX2dldF9qb2JfdGl0bGVzIiwiYWRtaW5fZ2V0X2Z1bmN0aW9ucyIsImFkbWluX2dldF9ncm91cHMiLCJhZG1pbl9nZXRfcGxhbnRzIiwiYWRtaW5fZ2V0X3JvdXRlcyIsImFkbWluX2dldF9zaGlwbWVudHMiLCJhZG1pbl9hY3RpdmVfZ2kiLCJsb2dpbl9hZG1pbiIsImV4cG9ydF9lbXMiLCJhZG1pbl9nZXRfZ2VvbWFwIiwiYWRtaW5fZ2V0X2FjY2Vzc19jb250cm9scyIsImFkbWluX2dldF9uZXdwYWdlIiwiYWRtaW5fZ2V0X3JhdGluZyIsImFkbWluX2dldF9yZXBvcnRfZXJyb3JfY29kZSJdLCJhcHBOYW1lIjoiUE1TLUFETUlOIiwiaWF0IjoxNzEzNzY5MzYyLCJleHAiOjE3NDUzMjY5NjJ9.1lYoZAR8sdEi0EznO6g5oo28WMQ5xedcL-GcZRWYhQc'
        },
        followRedirects: false,
        validateStatus: (status) {
          return true;
        });
    return option;
  }

  Future<bool> _checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }

  Future<Response> getData(
      {String? domainApp,
      required String path,
      Map<String, dynamic>? queryParameters}) async {
    if (await _checkInternetConnection()) {
      try {
        logRequest();
        Response<dynamic> result = await dio.get((domainApp ?? domain) + path,
            queryParameters: queryParameters, options: options());
        return result;
      } on DioException catch (e) {
        return e.response ??
            Response(statusCode: -1, requestOptions: RequestOptions());
      }
    } else {
      return Response(
          statusCode: -1,
          statusMessage: AppConstants.networkMessage,
          requestOptions: RequestOptions());
    }
  }

  Future<Response> postData(
      {String? domainApp, required String path, dynamic params}) async {
    if (await _checkInternetConnection()) {
      try {
        logRequest();
        Response<dynamic> result = await dio.post((domainApp ?? domain) + path,
            data: params, options: options());
        return result;
      } on DioException catch (e) {
        return e.response ??
            Response(statusCode: -1, requestOptions: RequestOptions());
      }
    } else {
      return Response(
          statusCode: -1,
          statusMessage: AppConstants.networkMessage,
          requestOptions: RequestOptions());
    }
  }

  Future<Response> putData(
      {String? domainApp, required String path, dynamic params}) async {
    if (await _checkInternetConnection()) {
      try {
        logRequest();
        Response<dynamic> result = await dio.put((domainApp ?? domain) + path,
            data: params, options: options());
        return result;
      } on DioException catch (e) {
        return e.response ??
            Response(statusCode: -1, requestOptions: RequestOptions());
      }
    } else {
      return Response(
          statusCode: -1,
          statusMessage: AppConstants.networkMessage,
          requestOptions: RequestOptions());
    }
  }

  Future<Response> patchData(
      {String? domainApp,
      required String path,
      Map<String, dynamic>? params}) async {
    if (await _checkInternetConnection()) {
      try {
        logRequest();
        Response<dynamic> result = await dio.patch((domainApp ?? domain) + path,
            data: params, options: options());
        return result;
      } on DioException catch (e) {
        return e.response ??
            Response(statusCode: -1, requestOptions: RequestOptions());
      }
    } else {
      return Response(
          statusCode: -1,
          statusMessage: AppConstants.networkMessage,
          requestOptions: RequestOptions());
    }
  }

  Future<Response> deleteData(
      {String? domainApp,
      required String path,
      Map<String, dynamic>? params}) async {
    if (await _checkInternetConnection()) {
      try {
        logRequest();

        Response<dynamic> result = await dio.delete(
            (domainApp ?? domain) + path,
            data: params,
            options: options());
        return result;
      } on DioException catch (e) {
        return e.response ??
            Response(statusCode: -1, requestOptions: RequestOptions());
      }
    } else {
      return Response(
          statusCode: -1,
          statusMessage: AppConstants.networkMessage,
          requestOptions: RequestOptions());
    }
  }

  Future<Response> uploadImage(String url, String fileUrl) async {
    if (await _checkInternetConnection()) {
      try {
        logRequest();
        final binary = File(fileUrl).readAsBytesSync();
        return await dio.put(url,
            data: Stream.fromIterable(binary.map((e) => [e])),
            options: Options(
                headers: {'Content-Length': binary.length},
                followRedirects: false,
                validateStatus: (status) {
                  return true;
                }));
      } on DioException catch (e) {
        return e.response ??
            Response(statusCode: -1, requestOptions: RequestOptions());
      }
    } else {
      return Response(
          statusCode: -1,
          statusMessage: AppConstants.networkMessage,
          requestOptions: RequestOptions());
    }
  }

  Future download(String url, String savePath) async {
    if (await _checkInternetConnection()) {
      try {
        try {
          Response response = await Dio().get(
            url,
            options: Options(
                responseType: ResponseType.bytes,
                followRedirects: false,
                validateStatus: (status) {
                  return status! < 500;
                }),
          );
          File file = File(savePath);
          print(file.path);
          var raf = file.openSync(mode: FileMode.write);
          raf.writeFromSync(response.data);
          await raf.close();
        } catch (e) {
          print(e);
        }
      } on DioException catch (e) {
        return e.response ??
            Response(statusCode: -1, requestOptions: RequestOptions());
      }
    } else {
      return Response(
          statusCode: -1,
          statusMessage: AppConstants.networkMessage,
          requestOptions: RequestOptions());
    }
  }
}
