import 'package:flutter/material.dart';
import 'package:flutter__world_time/services/world_time.dart';
import 'package:flutter__world_time/pages/home.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime contoh = WorldTime(
        location: 'london', flag: 'england.png', url: 'Europe/London');
    await contoh.getTime();

    // digunakan untuk memberi layer home diatas layer loadnig
    // Navigator.pushNamed(context, '/home');

    // (pushReplacementNamed) digunakan untuk me replace layer loading dengan layer home
    //
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': contoh.location,
      'flag': contoh.flag,
      'time': contoh.time,
    });
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
        child: Text('loading'),
      ),
    );
  }
}
