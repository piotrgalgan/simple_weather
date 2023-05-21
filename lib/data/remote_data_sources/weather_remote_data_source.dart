import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get(
        'http://api.weatherapi.com/v1/current.json?key=262450d018664c23811133227231605&q=$city&aqi=no');
    return response.data;
  }
}