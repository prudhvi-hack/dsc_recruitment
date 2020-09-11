import 'package:dsc_app/widgets/CustomListTile.dart';
import 'package:dsc_app/widgets/drawer.dart';
import 'package:dsc_app/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dsc_app/core/apireq.dart';
class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EventsModel eventsModel = Provider.of<EventsModel>(
        context, listen: false);
    return FutureBuilder<List<String>>(
          future: eventsModel.events,
          builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return
            Scaffold(
              appBar: AppBar(
              title: Text("Home"),
              elevation: 3.0,
              actions: <Widget>[Search(snapshot.data)],
              ),
              drawer: DrawerPage(),
             body:
              snapshot.hasData
              ? Padding(
                padding: const EdgeInsets.fromLTRB(3, 0, 7, 0.0),
                child: ListView(
                children: getWidgetList(snapshot.data)),
              )
              : Center(child: CircularProgressIndicator()));
        },
      );
  }
  List<Widget> getWidgetList(List<String> list)
  {
      return list.map((e)=>CustomListTile(title: e)).toList();
  }
}

