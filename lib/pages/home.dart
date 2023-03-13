import 'package:flutter/material.dart';
import '../main.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Map data = {};

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;
    print(data);

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Text('home screen'),
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            },
            icon: Icon(Icons.edit_location),
            label: Text('edit location'),
          )
        ],
      )),
    );
  }
}
