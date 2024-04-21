import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }

  switch (condition) {
    case 'Sunny':
    case 'Clear':
      return Colors.amber;
    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
      return Colors.blueGrey;
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.grey;
    case 'Patchy rain possible':
    case 'Light drizzle':
    case 'Patchy light rain':
    case 'Patchy light rain with thunder':
      return Colors.lightBlue;
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
      return Colors.indigo;
    case 'Patchy snow possible':
    case 'Light snow':
    case 'Patchy light snow':
    case 'Patchy light snow with thunder':
      return Colors.lightBlue;
    case 'Patchy sleet possible':
    case 'Light sleet':
    case 'Patchy light sleet':
      return Colors.lightBlue;
    case 'Patchy freezing drizzle possible':
    case 'Freezing drizzle':
    case 'Light freezing rain':
      return Colors.lightBlue;
    case 'Moderate or heavy freezing rain':
      return Colors.indigo;
    case 'Moderate or heavy sleet':
    case 'Moderate or heavy sleet showers':
      return Colors.indigo;
    case 'Moderate snow':
    case 'Patchy moderate snow':
      return Colors.blue;
    case 'Heavy snow':
    case 'Patchy heavy snow':
      return Colors.blue;
    case 'Ice pellets':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
    case 'Blowing snow':
    case 'Blizzard':
      return Colors.grey;

    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
      return Colors.deepPurple;
    default:
      return Colors.blue;
  }
}
