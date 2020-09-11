import 'package:dsc_app/pages/Aboutpage.dart';
import 'package:flutter/material.dart';
import 'package:dsc_app/core/apireq.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:dsc_app/pages/home.dart';

void main() {
  runApp(
    Provider(create: (context){
      EventsModel eventsModel=EventsModel();
      eventsModel.events=eventsModel.fetchEventsFromApi(http.Client());
      return eventsModel;
    },
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff8484ff),
        backgroundColor: Color(0xff8484ff),
        brightness: Brightness.light

      ),
      title: 'DSC SASTRA',
      routes: {
        "/": (context) => MyHomePage(title: "Dsc App",),
        "/about": (context) => AboutPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

