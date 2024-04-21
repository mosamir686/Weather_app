class WeatherModel {
  final String cityName;
  final DateTime date;
  final String image;
  final double temp;
  final double mintemp;
  final double maxtemp;
  final String Conidion;

  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.image,
      required this.temp,
      required this.mintemp,
      required this.maxtemp,
      required this.Conidion});
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
        cityName: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        temp: json['current']['temp_c'],
        mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        Conidion: json['current']['condition']['text'],
        image: json['current']['condition']['icon']);
  }
}
