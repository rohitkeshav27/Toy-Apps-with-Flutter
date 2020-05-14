import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorlTime {
  String location;
  String time;
  String flag;
  String url;
  bool isDay;

  WorlTime({this.location,this.flag,this.url});
  Future<void> getTime() async{
    try {
      Response red = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(red.body);
      //print(data);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      String offset2 = data['utc_offset'].substring(4,6);
      //int offset = int.parse(offset1)+offset3;
//    print(datetime);
//    print(offset);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset),minutes: int.parse(offset2)));
      isDay = now.hour > 6 && now.hour < 19 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch(e)
    {
      print("Caught Error $e");
      time = "Could not get the time data!";
    }

  }
}
