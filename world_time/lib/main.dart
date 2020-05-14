import 'package:com/pages/choose_location.dart';
import 'package:com/pages/loading_dart.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));
