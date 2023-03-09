import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // simulate a network request
  // work the same as the setTimeout in javascript
  void getData() async {
    String name = await Future.delayed(Duration(seconds: 2), () {
      return 'Muhammad';
    });

    // just imagine these await is some of api endpoint
    String hobby = await Future.delayed(Duration(seconds: 2), () {
      return 'dzikir, doa, ibadah, membaca';
    });

    String quote = await Future.delayed(Duration(seconds: 2), () {
      return 'Bismillah Alhamdulillah sudah bisa sejauh ini, semoga berkah';
    });

    print(
        'my name is $name, some of my hobby are $hobby, and here is some quote that i made today $quote');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
