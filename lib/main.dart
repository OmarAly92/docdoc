import 'package:device_preview/device_preview.dart';
import 'package:docdoc/core/routing/app_routes.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => DocApp(appRoutes: AppRoutes()),
    ),
  );
}
