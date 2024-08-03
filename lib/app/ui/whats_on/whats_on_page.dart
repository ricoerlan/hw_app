import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hw_app/app/controllers/home_controller.dart';
import 'package:hw_app/app/core/colors/color_data.dart';
import 'package:hw_app/app/core/theme/app_theme.dart';
import 'package:hw_app/app/ui/widget/loading_widget.dart';

class WhatsOnPage extends GetWidget<HomeController> {
  const WhatsOnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: GetBuilder<HomeController>(initState: (state) {
        controller.fetchSongCharts();
      }, builder: (context) {
        return Card(
          color: ColorData.kColorBgAccentDarker,
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
          child: controller.isLoading
              ? const LoadingWidget()
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.r),
                        child: Text('HWGPeople Top Charts',
                            style: AppTheme.textStyle.textMDSemibold),
                      ),
                      SizedBox(height: 0.h),
                      controller.listSongCharts.id == null
                          ? const SizedBox()
                          : ListView.builder(
                              shrinkWrap: true,
                              itemCount:
                                  controller.listSongCharts.songs!.length > 11
                                      ? 11
                                      : controller.listSongCharts.songs!.length,
                              // controller.listSongCharts.songs?.length,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: ((context, index) => ListTile(
                                    leading: index == 0
                                        ? Text('1st',
                                            style: AppTheme.textStyle.textMDBold.copyWith(
                                                color: ColorData.kColorPrimary))
                                        : index == 1
                                            ? Text('2nd',
                                                style: AppTheme
                                                    .textStyle.textXSRegular
                                                    .copyWith(
                                                        color: ColorData
                                                            .kColorPrimary))
                                            : index == 2
                                                ? Text('3rd',
                                                    style: AppTheme
                                                        .textStyle.textXSRegular
                                                        .copyWith(
                                                            color: ColorData
                                                                .kColorPrimary))
                                                : Text('${index}th',
                                                    style: AppTheme
                                                        .textStyle.textXSRegular
                                                        .copyWith(
                                                            color: ColorData
                                                                .kColorText)),
                                    title: Row(
                                      children: [
                                        CachedNetworkImage(
                                          imageUrl: controller
                                              .listSongCharts
                                              .songs![index]
                                              .song!
                                              .artistProfilePicture
                                              .toString(),
                                          imageBuilder:
                                              (context, imageProvider) =>
                                                  Container(
                                            height: 60.r,
                                            width: 60.r,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.r),
                                                image: DecorationImage(
                                                    image: imageProvider)),
                                          ),
                                        ),
                                        SizedBox(width: 12.w),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                controller.listSongCharts
                                                    .songs![index].song!.title
                                                    .toString(),
                                                style: AppTheme
                                                    .textStyle.textXSSemibold
                                                    .copyWith(
                                                        color: Colors.white)),
                                            Text(
                                                controller
                                                    .listSongCharts
                                                    .songs![index]
                                                    .song!
                                                    .artistName
                                                    .toString(),
                                                style: AppTheme
                                                    .textStyle.textXSRegular
                                                    .copyWith(
                                                        color: ColorData
                                                            .kColorSecondaryText))
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                      SizedBox(height: 32.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/icon/ic_applemusic.png',
                            width: 0.35.sw,
                          ),
                          Image.asset(
                            'assets/icon/ic_spotify.png',
                            width: 0.35.sw,
                          ),
                        ],
                      ),
                      SizedBox(height: 32.h),
                    ],
                  ),
                ),
        );
      })),
    );
  }
}
