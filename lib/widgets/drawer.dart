import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DrawerPage extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      width: 291,
      color: Theme.of(context).primaryColor,
      child: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0.0),
                children: [
                  Container(padding: EdgeInsets.all(20),
                  color: Theme.of(context).primaryColor,
                  height: 151,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Text("Demo app DSC",
                            style: TextStyle(color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]
                    )
                  ),

                  ListTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.home),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Center(child: Text("Home",
                            style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.w600),
                        )
                        ),
                        SizedBox()
                      ],
                    ),
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/');
                    },
                  ),

                  ListTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.info),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Center(child: Text("About",
                          style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                        ),
                      ],
                    ),
                    onTap: (){
                      Navigator.pushReplacementNamed(context, '/about');
                    },
                  ),
                  SizedBox(),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.all(0),
                height: 40,
                color:Theme.of(context).primaryColor,
                child:
                Center(
                    child:Text("Powered by Google developers",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),)
                )
            )
          ],
        ),


      ),
    );
  }
}