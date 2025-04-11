import 'package:batt_kit/api/generated/batt_kit.swagger.dart';
import 'package:chopper/chopper.dart';

class ApiFactory {
  static BattKit getMobileApi(Uri baseUri, Interceptor authInterceptor) =>
      BattKit.create(baseUrl: baseUri, interceptors: [authInterceptor]);
}
