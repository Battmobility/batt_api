import 'package:chopper/chopper.dart';
import 'generated/mobile_api.swagger.dart';

class ApiFactory {
  static MobileApi getMobileApi(Uri baseUri, Interceptor authInterceptor) =>
      MobileApi.create(baseUrl: baseUri, interceptors: [authInterceptor]);
}
