import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hw_app/app/controllers/home_controller.dart';
import 'package:hw_app/app/core/colors/color_data.dart';
import 'package:hw_app/app/core/constant/strings.dart';
import 'package:hw_app/app/core/theme/app_theme.dart';
import 'package:hw_app/app/routes/pages.dart';
import 'package:hw_app/app/ui/widget/loading_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final controller = Get.find<HomeController>();
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  Strings.greeting,
                  style: TextStyle(
                      fontSize: AppTheme.textStyle.textSMRegular.fontSize,
                      color: ColorData.kColorText),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  Strings.greetingNonAuthorized,
                  style: TextStyle(
                      fontSize: AppTheme.textStyle.textMediumRegular.fontSize,
                      color: ColorData.kColorPrimary),
                ),
              ),
              SizedBox(height: 20.h),
              GetBuilder<HomeController>(
                  builder: (context) => controller.isLoading
                      ? SizedBox(
                          height: 1.sh,
                          width: double.infinity,
                          child: const LoadingWidget(),
                        )
                      : Column(
                          children: [
                            CarouselSlider(
                              carouselController: carouselController,
                              items: controller.listBanner.map((item) {
                                return GestureDetector(
                                  onTap: () {
                                    if (item.redirectInternalSetting
                                            ?.enumDescription
                                            ?.toLowerCase() ==
                                        "webview") {
                                      if (kDebugMode) {
                                        print(item.url ?? '');
                                      }
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: ColorData.white,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: CachedNetworkImage(
                                        imageUrl: item.imageUrl.toString(),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              options: CarouselOptions(
                                  autoPlay: true,
                                  enlargeCenterPage: true,
                                  aspectRatio: 1,
                                  viewportFraction: 1,
                                  onPageChanged: (index, reason) {
                                    _current = index;
                                    setState(() {});
                                  }),
                            ),
                          ],
                        )),
              SizedBox(height: 16.h),
              GetBuilder<HomeController>(
                builder: (ctx) => controller.isLoading
                    ? const SizedBox()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            controller.listBanner.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: 10.r,
                              height: 10.r,
                              margin: EdgeInsets.symmetric(horizontal: 4.w),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorData.kColorPrimary.withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
              ),
              SizedBox(height: 16.h),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                color: ColorData.kColorBgAccent,
                child: ListTile(
                  leading: SvgPicture.asset('assets/icon/ic_user_login.svg',
                      height: 40.r, width: 40.r),
                  title: Text(Strings.pointsNonAuthorized,
                      style: TextStyle(
                          fontSize:
                              AppTheme.textStyle.textMediumRegular.fontSize,
                          color: ColorData.kColorText)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const GridButtonWidget(
                      image: 'assets/icon/ic_atlas_logo.svg',
                      label: 'Atlas',
                    ),
                    const GridButtonWidget(
                        image: 'assets/icon/ic_home_reservation.svg',
                        label: 'Reservation'),
                    const GridButtonWidget(
                        image: 'assets/icon/ic_home_outlets.svg',
                        label: 'Outlet'),
                    const GridButtonWidget(
                        image: 'assets/icon/ic_bottles.svg',
                        label: 'My Bottles'),
                    GridButtonWidget(
                      image: 'assets/icon/ic_whatson.svg',
                      label: 'What\'s On',
                      onTap: () {
                        Get.toNamed(Routes.whatsOnRoute);
                      },
                    ),
                    const GridButtonWidget(
                        image: 'assets/icon/ic_event.svg', label: 'Events'),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  Strings.myFavOutlets,
                  style: TextStyle(
                      fontSize: AppTheme.textStyle.textSMRegular.fontSize,
                      color: ColorData.kColorText),
                ),
              ),
              SizedBox(height: 200.h)
            ],
          ),
        ),
      ),
    );
  }
}

class GridButtonWidget extends StatelessWidget {
  final String image;
  final String label;
  final Function? onTap;

  const GridButtonWidget(
      {super.key, required this.image, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            width: 30.w,
            height: 50.h,
          ),
          SizedBox(height: 5.h),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: AppTheme.textStyle.textXSRegular.fontSize,
                color: ColorData.baseWhite),
          ),
        ],
      ),
    );
  }
}
