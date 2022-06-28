import 'package:first_flutter_app/screens/about_screen.dart';
import 'package:first_flutter_app/screens/country_detail_screen.dart';
import 'package:first_flutter_app/screens/country_list_screen.dart';
import 'package:first_flutter_app/screens/kurdistan_cities_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => CountrList(),
      '/about': (context) => AboutScreen(),
    },
    );
  }
}
