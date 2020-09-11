import './screens/details_screen.dart';
import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),
      // initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        DetailsScreen.routeName: (_) => DetailsScreen(),
      },
    );
  }
}
