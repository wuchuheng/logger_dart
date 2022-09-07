import 'package:test/test.dart';
import 'package:wuchuheng_logger/wuchuheng_logger.dart';

void main() {
  group('A group of tests', () {
    test('Logger Test', () {
      Logger.info('Hello logger for info.', symbol: 'print');
      // INFO 2022-08-20 12:47:24.401546: Hello logger for info. file://wuchuheng_logger/example/wuchuheng_logger_example.dart:4:10 symbol: print
      Logger.error('Hello logger for error.', symbol: 'print');
      //  INFO 2022-08-20 12:47:24.405646: Hello logger for error. file://wuchuheng_logger/example/wuchuheng_logger_example.dart:5:10 symbol: print
    });

    test('Logger Subject Test', () {
      late LoggerItem result;
      final subjectHandle = Logger.subscribe((loggerItem) => result = loggerItem);
      final testItem = LoggerItem(message: 'first message', type: LoggerType.info, symbol: 'info symbol');
      Logger.info(testItem.message, symbol: testItem.symbol);
      expect(result.message, testItem.message);
      expect(result.type, testItem.type);
      expect(result.symbol, testItem.symbol);
      subjectHandle.unsubscribe();
      Logger.info('second message');
      expect(result.message != 'second message', isTrue);
    });
  });
}
