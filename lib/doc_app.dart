import 'package:docdoc/core/routing/app_routes.dart';
import 'package:docdoc/core/theming/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({
    Key? key,
    required this.appRoutes,
  }) : super(key: key);
  final AppRoutes appRoutes;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        onGenerateRoute: appRoutes.generateRoute,
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
      ),
    );
  }
}
