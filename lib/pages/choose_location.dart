import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('init state function run');
  }

  @override
  Widget build(BuildContext context) {
    print('build function is running');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: TextButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('the number is: $counter'),
      ),
    );
  }
}
