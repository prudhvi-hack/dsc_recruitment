import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Url extends StatelessWidget {
  final url;
  Url(this.url);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.blue),borderRadius: BorderRadius.circular(20) ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10,10,10,10),
          child: Center(child: Text("visit dscsastra.com",
            style: TextStyle(color: Colors.blue,
                fontSize: 20),),),
        ),
      ),
      onTap: ()async{
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );
  }
}
