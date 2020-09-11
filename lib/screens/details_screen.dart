import './main_drawer.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = '/details_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safexpress'),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Title'),
              subtitle: Text('subtitle'),
              trailing: Icon(Icons.local_shipping),
              onTap: () {},
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('subtitle'),
              trailing: Icon(Icons.local_shipping),
            ),
            ListTile(
              title: Text('Title'),
              subtitle: Text('subtitle'),
              trailing: Icon(Icons.local_shipping),
            ),
            FloatingActionButton(
                child: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
