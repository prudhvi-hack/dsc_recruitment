import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  final List<String> events;
  Search(this.events);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          showSearch(context: context, delegate: Itemssearch(events));
        });
  }
}

class Itemssearch extends SearchDelegate<String> {
  List<String> items;
  Itemssearch(this.items);
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return theme.copyWith(
        primaryColor: Colors.white,
        primaryIconTheme: theme.primaryIconTheme.copyWith(color: Colors.grey),
        primaryColorBrightness: Brightness.light,
        textTheme: theme.textTheme.copyWith(
            headline6: theme.textTheme.headline6
                .copyWith(fontSize: 18, fontWeight: FontWeight.normal)));
  }

  @override
  String get searchFieldLabel => "Search across events";

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Image(
        image: AssetImage("assets/images/logo.png"),
      ),
    ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Widget> suggestions = items
        .where((element) =>
    element.toLowerCase().contains(query.toLowerCase()))
        .map((e) => ListTile(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          e,
          style: TextStyle(fontSize: 20),
        ),
      ),
      onTap: () {
        query = e;
        showResults(context);
      },
    ))
        .toList();
    return ListView(children: suggestions);
  }
}