import 'package:stack_trace/stack_trace.dart';
import 'package:wuchuheng_hooks/wuchuheng_hooks.dart';

import 'model/logger_item.dart';
import 'model/logger_type.dart';

class Logger {
  static bool debugger = true;
  static final SubjectHook<LoggerItem> _subjectHook = SubjectHook();

  static Unsubscribe subscribe(void Function(LoggerItem loggerItem) callback) => _subjectHook.subscribe(callback);

  static void info(
    String message, {
    String? symbol,
  }) {
    if (debugger) {
      final chain = Chain.forTrace(StackTrace.current);
      final frames = chain.toTrace().frames;
      final frame = frames[1];
      final file = '${frame.uri}:${frame.line}:${frame.column}';
      final symbolInfo = symbol != null ? 'symbol: $symbol' : '';
      final dateTime = DateTime.now();

      print(
        '\x1B[32m INFO ${dateTime.toString()}: $message $file $symbolInfo \x1B[0m',
      );
      _subjectHook.next(
        LoggerItem(
          message: message,
          type: LoggerType.info,
          symbol: symbol,
          file: file,
          dateTime: dateTime,
        ),
      );
    }
  }

  static void error(String message, {String? symbol}) {
    if (debugger) {
      final chain = Chain.forTrace(StackTrace.current);
      final frames = chain.toTrace().frames;
      final frame = frames[1];
      final file = '${frame.uri}:${frame.line}:${frame.column}';
      final symbolInfo = symbol != null ? 'symbol: $symbol' : '';
      final dateTime = DateTime.now();

      print(
        '\x1B[31m INFO ${dateTime.toString()}: $message $file $symbolInfo \x1B[0m',
      );
      _subjectHook.next(
        LoggerItem(
          message: message,
          type: LoggerType.error,
          symbol: symbol,
          file: file,
          dateTime: dateTime,
        ),
      );
    }
  }
}
