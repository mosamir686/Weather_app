import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_weather_cubit.dart';

class Search_view extends StatelessWidget {
  const Search_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Search'),


      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              onSubmitted: (value) async {
                 var getWeatherCubit= BlocProvider.of<GetWeatherCubit>(context);
                 getWeatherCubit.getWeather(value);
                Navigator.of(context).pop();
              },
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                labelText: 'Enter City Name',
                suffixIcon: const Icon(Icons.search_outlined),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
