import 'package:api/pages/home_page.dart';
import 'package:api/states/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => WeatherCubit(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Homepage();
    // return Scaffold(
    // appBar: AppBar(
    // title: Text(widget.title),
    //),
    //body: Center(

    //child: Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    //children: <Widget>[
    // const Text(
    //  'You have pushed the button this many times:',
    //),
    //Text(
    //  '$_counter',
    // style: Theme.of(context).textTheme.headline4,
    //),
    //],
    //),
    //),
  }
}
