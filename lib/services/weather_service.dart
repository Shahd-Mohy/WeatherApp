import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);

  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "861f25521e95458b99b224248241809";

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1");

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data["error"]["message"] ??
          "Oops! There was an Error , Try later";
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Oops! There was an Error , Try later');
    }
  }
}
