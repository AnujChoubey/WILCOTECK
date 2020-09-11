import 'package:WILCOTECK/screens/main_drawer.dart';
import 'package:flutter/material.dart';
import './details_screen.dart';
import 'main_drawer.dart';
import 'package:table_calendar/table_calendar.dart';
//import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
//import 'package:syncfusion_flutter_calendar/calendar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Text(
            //'This is the home page',
            //style: TextStyle(
            // fontSize: 22,
            // ),
            Container(
            child: Image.asset('assets/images/wtcklgo.png',
            width: 400,height: 100,fit: BoxFit.fitWidth,),),
            TableCalendar(
              calendarController: _controller,
            ),

            RaisedButton(
              child: Text('Go to Details'),
              onPressed: () {
                Navigator.of(context).pushNamed(DetailsScreen.routeName);
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
