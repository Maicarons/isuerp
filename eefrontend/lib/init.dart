import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:isu/log.dart';

var logPath = '';

Future<void> init() async {
  collectSystemEnvironment();
}

void collectSystemEnvironment() {
  // 收集系统语言
  String systemLanguage = Platform.localeName;

  // 收集系统类型
  String systemType = Platform.isAndroid
      ? 'Android'
      : Platform.isIOS
          ? 'iOS'
          : Platform.isMacOS
              ? 'macOS'
              : Platform.isWindows
                  ? 'Windows'
                  : Platform.isLinux
                      ? 'Linux'
                      : Platform.isFuchsia
                          ? 'Fuchsia'
                          : 'Unknown';

  // 收集系统版本
  String systemVersion = Platform.operatingSystemVersion;
  // 打印收集到的系统环境信息
  if (kDebugMode) {
    Log.d('系统语言: $systemLanguage');
  }
  if (kDebugMode) {
    Log.d('系统类型: $systemType');
  }
  if (kDebugMode) {
    Log.d('系统版本: $systemVersion');
  }
}
