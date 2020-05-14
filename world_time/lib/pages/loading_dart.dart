import 'package:flutter/material.dart';
import 'package:com/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupTools() async {
    WorlTime we = WorlTime(location: 'India',flag: 'germany.png',url:'Asia/Kolkata');
    await we.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location':we.location,
      'flag':we.flag,
      'time':we.time,
      'isDay':we.isDay,
    });
  }




  void initState() {
    super.initState();
    setupTools();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:SpinKitWave(
          color: Colors.grey[700],
          size: 80.0,
        ),
      )
    );
  }
}
