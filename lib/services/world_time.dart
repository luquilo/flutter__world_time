import 'package:http/http.dart';
import 'dart:convert'; // used for converting json string
import 'package:intl/intl.dart';

class WorldTime {
  late String location; // location name for the ui
  late String time; // the time in that location
  late String flag; // an url to a flag icon
  late String url; // the url of the api datetime endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      // make a real request of london timezome
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));

      Map data = jsonDecode(response.body);
      // print(data);

      // get datetime and offset properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // create a datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);
      // print(offset);

      // set the time variable property
      time = DateFormat.jm().format(now);
      print(time);
    } catch (error) {
      print('the error is $error');
      time = 'could not get the data, probably due to bad internet connection';
    }
  }
}
