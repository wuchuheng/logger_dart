
<a href="https://pub.dev/packages/wuchuheng_logger">
    <h1 align="center"> wuchuheng_logger </h1>
</a>

<p align="center"> This is a log library for dart </p>

<p align="center">
    <a href="https://github.com/wuchuheng/logger_dart/actions/workflows/test.yml">
        <img src="https://github.com/wuchuheng/logger_dart/actions/workflows/test.yml/badge.svg" />
    </a>
</p>

## Features

- ERROR log
- INFO log

## Getting started

## Usage

```dart
import 'package:wuchuheng_logger/src/index.dart';

void main() {
    Logger.info('Hello logger for info.', symbol: 'print');
    // INFO 2022-08-20 12:47:24.401546: Hello logger for info. file://wuchuheng_logger/example/wuchuheng_logger_example.dart:4:10 symbol: print
    Logger.error('Hello logger for error.', symbol: 'print');
    //  INFO 2022-08-20 12:47:24.405646: Hello logger for error. file://wuchuheng_logger/example/wuchuheng_logger_example.dart:5:10 symbol: print
    // Subscribe to the log
    final subscribeHandle = Logger.subscribe((loggerItem) {
        print(loggerItem.message);
        print(loggerItem.symbol);
        print(loggerItem.type);
    });
    subscribeHandle.unsubscribe();
}
```

## Additional information

contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
