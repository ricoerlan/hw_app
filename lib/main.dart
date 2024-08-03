import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hw_app/app/core/constant/strings.dart';
import 'package:hw_app/app/core/theme/theme_data.dart';
import 'package:hw_app/app/routes/pages.dart';

void main() async {
  DartPluginRegistrant.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await dotenv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final MainThemeData mainThemeData = MainThemeData();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: Strings.appName,
            theme: mainThemeData.lightTheme,
            debugShowCheckedModeBanner: false,
            darkTheme: mainThemeData.darkTheme,
            themeMode: ThemeMode.light,
            initialRoute: Routes.splashRoute,
            transitionDuration: const Duration(milliseconds: 200),
            defaultTransition: Transition.rightToLeftWithFade,
            getPages: AppPages.pages,
          );
        });
  }
}
