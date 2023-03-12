import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert'; // used for converting json string

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // learn how to make request on dummy api

    // http flutter package on version 0.13 update only accept uri
    // using uri.parse to convert string to a uri
    // returning a json data
    // "Response" is given to us by the http module
    // this response is getting a string that look like an object
    // Response response =
    //     await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    // Map data = jsonDecode(response.body); //return a flutter map

    // print(data['userId']);

    // make a real request of london timezome
    Response response = await get(
        Uri.parse('https://worldtimeapi.org/api/timezone/Europe/London'));

    Map data = jsonDecode(response.body);
    print(data);

    // get datetime and offset properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    // create a datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
    // print(offset);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
