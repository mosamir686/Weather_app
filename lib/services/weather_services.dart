import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_models.dart';

class WeatherServices {
  final Dio dio;
  final String kay = 'a4f6c8f54f7b413d97a150639230105%20';
  final String baseUrl = 'http://api.weatherapi.com/v1';

  WeatherServices(this.dio);
  Future<WeatherModel?> getCurrntWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$kay&q=$cityName&days=1&aqi=no&alerts=no#');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String erorrMessage = e.response?.data['error']['message'] ??
          'Oops there was an erorr,try later';
      throw Exception(erorrMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Oops there was an error,try later');
    }
  }
}
