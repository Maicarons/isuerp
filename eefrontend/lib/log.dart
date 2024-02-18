import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class Log {
  static Logger? logger;

  static Future<void> init() async {
    Directory logPath = await getApplicationSupportDirectory();
    File logFile = File(join(logPath.path, 'log.txt'));

    logger = Logger(
      printer: HybridPrinter(
        SimplePrinter(colors: kDebugMode),
        error: PrettyPrinter(methodCount: 5, colors: kDebugMode),
        warning: PrettyPrinter(methodCount: 5, colors: kDebugMode),
      ),
      output: MultiOutput([
        ConsoleOutput(),
        if (kReleaseMode)
          FileOutput(
            file: logFile,
          ),
      ]),
      level: kDebugMode ? Level.trace : Level.info,
      filter: ProductionFilter(),
    );

    Log.v('Log file location: ${logFile.path}');
  }

  static void log(Level level, dynamic message,
      [dynamic error, StackTrace? stackTrace]) {
    if (logger != null) {
      logger!.log(level, message, error: error, stackTrace: stackTrace);
    }
  }

  static void v(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    log(Level.trace, message, error, stackTrace);
  }

  static void d(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    log(Level.debug, message, error, stackTrace);
  }

  static void i(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    log(Level.info, message, error, stackTrace);
  }

  static void w(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    log(Level.warning, message, error, stackTrace);
  }

  static void e(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    log(Level.error, message, error, stackTrace);
  }
}
