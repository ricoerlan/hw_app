import 'package:get/get.dart';
import 'package:hw_app/app/core/constant/strings.dart';
import 'package:hw_app/app/data/models/banner.dart';
import 'package:hw_app/app/data/models/song_charts.dart';
import 'package:hw_app/app/data/repositories/home/home_repository.dart';
import 'package:hw_app/app/utils/show_pop_up_dialog.dart';

class HomeController extends GetxController {
  final HomeRepository apiService = HomeRepository();
  final ShowPopUpDialog _showPopUpDialog = ShowPopUpDialog();
  bool _isLoading = false;
  List<BannerModel> _listBanner = [];
  SongChartsModel _latestCharts = SongChartsModel();

  bool get isLoading => _isLoading;
  List<BannerModel> get listBanner => _listBanner;
  SongChartsModel get listSongCharts => _latestCharts;

  //fetch Banner List onInit for Banner Carousel in HomePage
  @override
  onInit() {
    fetchBanners();
    super.onInit();
  }

  //fetch Banner List from Repository
  void fetchBanners() async {
    try {
      _isLoading = true;
      final List<BannerModel> result = await apiService.fetchBanner();
      _listBanner = result;
    } catch (err) {
      _showPopUpDialog.showPopUpDialog(
          title: ErrorStrings.somethingWentWrong,
          content: err.toString(),
          isWithButton: true,
          onConfirm: () {
            Get.back();
          });
    } finally {
      _isLoading = false;
      refresh();
    }
  }

  //fetch Banner List from Repository
  void fetchSongCharts() async {
    try {
      _isLoading = true;
      final SongChartsModel result = await apiService.fetchSongCharts();
      _latestCharts = result;
    } catch (err) {
      _showPopUpDialog.showPopUpDialog(
          title: ErrorStrings.somethingWentWrong,
          content: err.toString(),
          isWithButton: true,
          onConfirm: () {
            Get.back();
          });
    } finally {
      _isLoading = false;
      refresh();
    }
  }
}
