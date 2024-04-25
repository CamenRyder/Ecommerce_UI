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

  static String token = '';

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
          'x-application-name': 'PMS-APP',
          'x-private-key': AppConstants.xPrivateKey,
          'Authorization': token.isEmpty ? '' : ('Bearer ' + token)
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
