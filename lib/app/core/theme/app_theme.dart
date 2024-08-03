import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hw_app/app/core/colors/color_data.dart';

class AppTheme {
  static const colors = ColorData;
  static const textStyle = _AppFont();
}

class _AppFont {
  const _AppFont();
  TextStyle get _fontInter => const TextStyle(
        fontFamily: 'Inter',
      );
  TextStyle get _fontNunito => const TextStyle(fontFamily: 'Nunito');
  TextStyle get display2xlRegular => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 72.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get display2xlMedium => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 72.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get display2xlSemibold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 72.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get display2xlBold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 72.sp,
        fontWeight: FontWeight.w900,
      );

  TextStyle get displayXLRegular => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 60.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get displayXLMedium => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 60.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get displayXLSemibold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 60.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get displayXLBold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 60.sp,
        fontWeight: FontWeight.w900,
      );

  TextStyle get displayLGRegular => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 48.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get displayLGMedium => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 48.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get displayLGSemibold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 48.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get displayLGBold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 48.sp,
        fontWeight: FontWeight.w900,
      );
  TextStyle get displayMDRegular => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 36.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get displayMDMedium => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 36.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get displayMDSemibold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 36.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get displayMDBold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 36.sp,
        fontWeight: FontWeight.w900,
      );

  TextStyle get displaySMRegular => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 30.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get displaySMMedium => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 30.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get displaySMSemibold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 30.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get displaySMBold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 30.sp,
        fontWeight: FontWeight.w900,
      );

  TextStyle get displaySMMediumItalic => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 30.sp,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
      );

  TextStyle get displayXSRegular => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get displayXSMedium => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get displayXSSemibold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get displayXSBold => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
      );

  TextStyle get displayXSMediumItalic => _fontNunito.copyWith(
        color: ColorData.kColorText,
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textXLRegular => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get textXLMedium => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get textXLSemibold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get textXLBold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w900,
      );

  TextStyle get textXLRegularItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textXLMediumItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textXLSemiboldItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textXLBoldItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textXLRegularUnderlined => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
      );

  TextStyle get textLGRegular => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get textLGMedium => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get textLGSemibold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get textLGBold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w900,
      );

  TextStyle get textLGRegularItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textLGMediumItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textLGSemiboldItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textLGBoldItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textLGRegularUnderlined => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
      );

  TextStyle get textLGMediumUnderlined => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      );

  TextStyle get textMDRegular => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get textMDMedium => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get textMDSemibold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get textMDBold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w900,
      );

  TextStyle get textMDRegularItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textMDMediumItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textMDSemiboldItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textMDBoldItalic => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w900,
        fontStyle: FontStyle.italic,
      );

  TextStyle get textMDRegularUnderlined => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
      );

  TextStyle get textMDMediumUnderlined => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      );

  TextStyle get textSMRegular => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get textSMMedium => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get textSMSemibold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get textSMBold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 14.sp,
        fontWeight: FontWeight.w900,
      );

  TextStyle get textSMRegularUnderlined => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
      );

  TextStyle get textSMMediumUnderlined => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.underline,
      );

  TextStyle get textXSRegular => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get textXSMedium => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get textXSSemibold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get textXSBold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 12.sp,
        fontWeight: FontWeight.w900,
      );

  TextStyle get textMediumRegular => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
      );

  TextStyle get textMediumMedium => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
      );

  TextStyle get textMediumSemibold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 10.sp,
        fontWeight: FontWeight.w600,
      );

  TextStyle get textMediumBold => _fontInter.copyWith(
        color: ColorData.kColorText,
        fontSize: 10.sp,
        fontWeight: FontWeight.w900,
      );
}
