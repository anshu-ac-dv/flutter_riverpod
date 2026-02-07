import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_tutorial/api/main_screen.dart';
import 'package:flutter_riverpod_tutorial/counter.dart';
import 'package:flutter_riverpod_tutorial/favourite_app//home_screen.dart';
import 'package:flutter_riverpod_tutorial/search.dart';
import 'package:flutter_riverpod_tutorial/slider_page.dart';
import 'package:flutter_riverpod_tutorial/stream_provider/home_screen.dart';
import 'package:flutter_riverpod_tutorial/to_do/main_screen.dart';
import 'package:flutter_riverpod_tutorial/api/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
        //home: HomeScreen2(),
        //home: Counter(),
        //home: SliderPage(),
        //home: const Search(),
        //home: const MainScreen(),
        //home: const HomeScreen(),
        //home: const HomeScreen4(),
        //home: HomeScreen5(),
        home: const MainScreen2(),
      ),
    );
  }
}
