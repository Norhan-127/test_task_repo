import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_task/core/errors/error_logger.dart';
import 'package:test_task/core/services/services_init.dart';
import 'package:test_task/my_app.dart';

Future<void> main() async {
  runZonedGuarded(
    initializeApp,
    handleDartErrors,
  );
}

Future<void> initializeApp() async {
  try {
    await initServices();
    setupErrorHandling();
    runApp(const MyApp());
  } catch (e, stack) {
    logDartErrors(e, stack);
  }
}

Future<void> initServices() async {
  await ServicesInit().init();
}

void setupErrorHandling() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    logFlutterErrors(details);
  };
}

void handleDartErrors(Object error, StackTrace stack) {
  logDartErrors(error, stack);
}
