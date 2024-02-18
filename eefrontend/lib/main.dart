import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:isu/init.dart';
import 'package:isu/ui.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:window_manager/window_manager.dart';

import 'log.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Log.init();
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      Log.i('版本:${packageInfo.version}');
      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        Log.e('Flutter Error', details.exception, details.stack);
      };
      if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
        await windowManager.ensureInitialized();
        WindowOptions windowOptions = WindowOptions(
          size: const Size(1280, 720),
          minimumSize: const Size(640, 360),
          center: true,
          title: 'ISU',
          titleBarStyle:
              Platform.isMacOS || Platform.isWindows || Platform.isLinux
                  ? TitleBarStyle.normal
                  : TitleBarStyle.hidden,
        );
        windowManager.waitUntilReadyToShow(windowOptions, () async {
          await windowManager.show();
          await windowManager.focus();
        });
      }

      init();
      runApp(const ISUApp());
    },
    (Object error, StackTrace stack) {
      Log.e('Dart Error', error, stack);
      exit(1);
    },
  );
}
