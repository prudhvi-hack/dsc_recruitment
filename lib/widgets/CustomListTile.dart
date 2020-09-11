import 'package:flutter/material.dart';
class CustomListTile extends StatelessWidget {
  final title;
  CustomListTile({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 2,15),
      child: Container(
        height: 70,
        padding: EdgeInsets.fromLTRB(20,10,10,10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            blurRadius: 1,
            spreadRadius: 0.01,
            offset: Offset(0,3),
            color: Colors.grey.withOpacity(0.2)

          ),]
          //boxShadow:
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,style: TextStyle(fontSize: 20),maxLines: 2,),
            ],
          ),
        ),

      ),
    );
  }
}
