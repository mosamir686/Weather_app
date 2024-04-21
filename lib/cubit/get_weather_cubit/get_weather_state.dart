import 'package:weather_app/models/weather_models.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedStat extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedStat(this.weatherModel);
}

class WeatherFailurState extends WeatherState {
  final  String erorrMessage;

  WeatherFailurState(this.erorrMessage);
}
