import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hw_app/app/core/colors/color_data.dart';
import 'package:hw_app/app/core/theme/app_theme.dart';
import 'package:hw_app/app/routes/pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () async {
      Get.offAndToNamed(Routes.navbarRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: ColorData.transparent,
        width: double.infinity,
        child: Center(
          child: Text('HW GROUP',
              style: AppTheme.textStyle.displayLGSemibold
                  .copyWith(color: ColorData.kColorText)),
        ),
      ),
    );
  }
}
