import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        appBar: AppBar(

          title: const Text('Weather App'),
          backgroundColor: Theme.of(context).primaryColor,


          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Search_view();
                  }));
                },
                icon: const Icon(Icons.search))
          ],

        ),
        body: BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherInitialState) {
              return NoWeatherBody();
            } else if (state is WeatherLoadedStat) {
              return WeatherInfoBody(
                  weatherModel:state.weatherModel,

              );
            } else {
              return Center(
                child: Text('ops Error Check The Name City ',style:TextStyle(
                  fontSize: 25
                ),),
              );
            }
          },
        ));
  }
}
