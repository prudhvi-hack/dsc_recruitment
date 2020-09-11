import 'package:dsc_app/widgets/Logo.dart';
import 'package:dsc_app/widgets/drawer.dart';
import 'package:dsc_app/widgets/url.dart';
import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget {
  final String text="Developer Student Clubs is a community where everyone " +
  "is welcome. We help students bridge the gap between"+
  "theory and practice and grow their knowledge by"+
  "providing a peer-to-peer learning environment, by"+
  "conducting workshops, study jams and building solutions"+
  "for local businesses. Developer Student Clubs is a"+
  "program supported by Google Developers.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        elevation: 3.0,
      ),
      drawer: DrawerPage(),
      body: Container(
        padding: EdgeInsets.all(50),
        child: ListView(
          children: [
            Logo(),
            Padding(padding: EdgeInsets.only(bottom: 20),),
            Text(text,style:TextStyle(fontSize: 14),textAlign: TextAlign.center,),
            Padding(padding: EdgeInsets.only(bottom: 25)),
            Url("https://dscsastra.com/"),

          ],

        ),
      ),
    );
  }
}
