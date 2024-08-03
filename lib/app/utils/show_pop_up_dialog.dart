import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hw_app/app/core/colors/color_data.dart';
import 'package:hw_app/app/core/constant/strings.dart';

class ShowPopUpDialog {
  factory ShowPopUpDialog() {
    return _mainShowPopUpDialog;
  }

  ShowPopUpDialog._internal();

  static final ShowPopUpDialog _mainShowPopUpDialog =
      ShowPopUpDialog._internal();

  void showPopUpDialog({
    String? title,
    String? content,
    String? textConfirm = Strings.ok,
    bool isWithButton = true,
    bool isSingleBack = true,
    Function()? onConfirm,
  }) {
    isWithButton
        ? Get.defaultDialog(
            title: title ?? '',
            titleStyle: const TextStyle(
              color: ColorData.grey42,
              fontSize: 20.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
            middleText: content ?? '',
            middleTextStyle: const TextStyle(
              color: ColorData.grey,
              fontSize: 15.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
            backgroundColor: ColorData.white,
            barrierDismissible: true,
            onWillPop: () async => false,
            radius: 8.0,
            buttonColor: ColorData.greyEE,
            textConfirm: textConfirm,
            confirmTextColor: ColorData.grey42,
            onConfirm: onConfirm ??
                () {
                  if (isSingleBack) {
                    Get.back();
                  } else {
                    Get.back();
                    Get.back();
                  }
                },
          )
        : Get.defaultDialog(
            title: title ?? '',
            titleStyle: const TextStyle(
              color: ColorData.grey42,
              fontSize: 20.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
            middleText: content ?? '',
            middleTextStyle: const TextStyle(
              color: ColorData.grey,
              fontSize: 15.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
            ),
            backgroundColor: ColorData.white,
            barrierDismissible: true,
            onWillPop: () async => false,
            radius: 8.0,
          );
  }
}
