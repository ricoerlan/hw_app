import 'package:get/get.dart';
import 'package:hw_app/app/bindings/home_binding.dart';
import 'package:hw_app/app/ui/event/event_page.dart';
import 'package:hw_app/app/ui/home/home_page.dart';
import 'package:hw_app/app/ui/navbar_page.dart';
import 'package:hw_app/app/ui/profile/profile_page.dart';
import 'package:hw_app/app/ui/splash_page.dart';
import 'package:hw_app/app/ui/whats_on/whats_on_page.dart';
part './routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.splashRoute, page: () => const SplashPage()),
    GetPage(
        name: Routes.navbarRoute,
        page: () => const NavbarPage(),
        binding: HomeBinding()),
    GetPage(name: Routes.homeRoute, page: () => const HomePage()),
    GetPage(name: Routes.eventRoute, page: () => const EventPage()),
    GetPage(name: Routes.profileRoute, page: () => const ProfilePage()),
    GetPage(name: Routes.whatsOnRoute, page: () => const WhatsOnPage()),
  ];
}
