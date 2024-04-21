import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
   WeatherModel? weatherModel;
   getWeather(cityName) async {
     try {
      weatherModel = (await WeatherServices(Dio())
           .getCurrntWeather(cityName: cityName))!;
       emit(WeatherLoadedStat(weatherModel!));
     }  catch (e) {
       emit(WeatherFailurState(
         e.toString()
       ));
     }

   }
}
