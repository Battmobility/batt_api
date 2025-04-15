import 'package:logger/logger.dart';

Logger get logger => Log.instance;

class Log extends Logger {
  Log._()
      : super(
            printer: PrettyPrinter(
                dateTimeFormat: DateTimeFormat.onlyTime,
                methodCount: 0,
                noBoxingByDefault: true));
  static final instance = Log._();
}
