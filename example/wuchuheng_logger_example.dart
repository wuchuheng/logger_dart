import 'package:wuchuheng_logger/src/index.dart';

void main() {
  Logger.info('Hello logger for info.', symbol: 'print');
  // INFO 2022-08-20 12:47:24.401546: Hello logger for info. file://wuchuheng_logger/example/wuchuheng_logger_example.dart:4:10 symbol: print
  Logger.error('Hello logger for error.', symbol: 'print');
  //  INFO 2022-08-20 12:47:24.405646: Hello logger for error. file://wuchuheng_logger/example/wuchuheng_logger_example.dart:5:10 symbol: print
  // Subscribe to the log
  final subscribeHandle = Logger.subscribe((loggerItem, _) {
    print(loggerItem.message);
    print(loggerItem.symbol);
    print(loggerItem.type);
  });
  subscribeHandle.unsubscribe();
}
