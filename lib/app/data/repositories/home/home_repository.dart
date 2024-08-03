import 'package:hw_app/app/data/models/banner.dart';
import 'package:hw_app/app/data/models/song_charts.dart';
import 'package:hw_app/app/data/services/home/home_api_service.dart';

class HomeRepository {
  final HomeApiClient _apiClient = HomeApiClient();

  Future<List<BannerModel>> fetchBanner() async {
    try {
      return await _apiClient.fetchBanner();
    } catch (err) {
      rethrow;
    }
  }

  Future<SongChartsModel> fetchSongCharts() async {
    try {
      return await _apiClient.fetchSongCharts();
    } catch (err) {
      rethrow;
    }
  }
}
