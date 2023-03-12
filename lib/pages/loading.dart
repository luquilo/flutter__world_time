import 'package:flutter/material.dart';
import 'package:flutter__world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void setupWorldTime() async {
    WorldTime contoh = WorldTime(
        location: 'london', flag: 'england.png', url: 'Europe/London');
    await contoh.getTime();
    print(contoh.time);
    print(contoh);
    setState(() {
      time = contoh.time;
    });
    // ini hanyalah code kosong
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text(time),
      ),
    );
  }
}
