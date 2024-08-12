import 'package:device_preview/device_preview.dart';
import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/routing/app_routes.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = TalkerBlocObserver( );
  await setupGetIt();


  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => DocApp(appRoutes: AppRoutes()),
    ),
  );
}
