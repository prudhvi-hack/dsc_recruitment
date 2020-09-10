/*
*for parsing http response into list of Events
*/
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> fetchEventsFromApi(http.Client client) async {
    String url="https://wayhike.com/dsc/demo_app_api.php";
    http.Response response=await client.get(url);
    return  parseEvents(response.body);
}


List<String> parseEvents(String responseBody)
{
     //this function converts http response body string to list<String>
    final parsed=json.decode(responseBody);
   // print(parsed);
    return List.from(parsed["event_titles"]);
}