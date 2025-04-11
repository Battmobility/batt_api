import 'package:batt_api/api/generated/client_index.dart';
import 'package:chopper/chopper.dart';

class ApiFactory {
  static Openapi getMobileApi(Uri baseUri, Interceptor authInterceptor) =>
      Openapi.create(baseUrl: baseUri, interceptors: [authInterceptor]);
}
