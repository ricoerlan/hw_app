import 'package:dio/dio.dart';
import 'package:hw_app/app/core/constant/strings.dart';
import 'package:hw_app/app/core/error/exceptions.dart';
import 'package:hw_app/app/data/models/banner.dart';
import 'package:hw_app/app/data/models/song_charts.dart';
import 'package:hw_app/app/data/services/api_service.dart';

class HomeApiClient {
  factory HomeApiClient() {
    return _homeApiClient;
  }

  HomeApiClient._internal();
  static final HomeApiClient _homeApiClient = HomeApiClient._internal();

  final ApiService _apiService = ApiService();

  Future<List<BannerModel>> fetchBanner() async {
    try {
      final response = await _apiService.get(ApiEndPoints.fetchBannerURL);
      if (response.statusCode == 200) {
        final List<BannerModel> data = response.data["data"]
            .toList()
            .map<BannerModel>((e) => BannerModel.fromJson(e))
            .toList();
        return data;
      } else {
        throw ServerException(message: response.data["message"]);
      }
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw ServerException(message: e.response!.data["message"]);
      } else {
        throw ServerException(message: 'Failed to fetch banner');
      }
    } catch (err) {
      rethrow;
    }
  }

  Future<SongChartsModel> fetchSongCharts() async {
    try {
      final response =
          await _apiService.get(ApiEndPoints.fetchLatestSongChartsURL);
      if (response.statusCode == 200) {
        final SongChartsModel data =
            SongChartsModel.fromJson(response.data["data"]);
        return data;
      } else {
        throw ServerException(message: response.data["message"]);
      }
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw ServerException(message: e.response!.data["message"]);
      } else {
        throw ServerException(message: 'Failed to fetch SongCharts');
      }
    } catch (err) {
      rethrow;
    }
  }
}
