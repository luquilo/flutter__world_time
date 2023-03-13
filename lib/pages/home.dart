import 'package:flutter/material.dart';
import '../main.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    String location = data?['location'] ?? '';
    String time = data?['time'] ?? '';

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        child: Column(
          children: <Widget>[
            Text('home screen'),
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: Icon(Icons.edit_location),
              label: Text('edit location'),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  location,
                  style: TextStyle(
                    fontSize: 28,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(time, style: TextStyle(fontSize: 66))
          ],
        ),
      )),
    );
  }
}
