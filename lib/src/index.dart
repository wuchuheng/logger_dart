import 'package:stack_trace/stack_trace.dart';

class Logger {
  static bool debugger = true;

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

      print(
        '\x1B[32m INFO ${DateTime.now().toString()}: $message $file $symbolInfo \x1B[0m',
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

      print(
        '\x1B[31m INFO ${DateTime.now().toString()}: $message $file $symbolInfo \x1B[0m',
      );
    }
  }
}
