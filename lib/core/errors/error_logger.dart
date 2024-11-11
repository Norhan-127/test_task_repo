
import 'package:flutter/material.dart';

void _debugMessage(String message) {
  debugPrint('\x1B[37m$message\x1B[0m');
}

void logFlutterErrors(FlutterErrorDetails details) {
  _debugMessage('Flutter error: ${details.exception}');
  _debugMessage('Stack trace: ${details.stack}');
}

void logDartErrors(Object error, StackTrace stackTrace) {
  _debugMessage('Dart error: $error');
  _debugMessage('Stack trace: $stackTrace');
}