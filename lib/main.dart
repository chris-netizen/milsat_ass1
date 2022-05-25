import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:milsat_ass1/history_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API TESTING',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HttpRequest(),
    );
  }
}

class HttpRequest extends StatefulWidget {
  const HttpRequest({Key? key}) : super(key: key);

  @override
  State<HttpRequest> createState() => _HttpRequestState();
}

class _HttpRequestState extends State<HttpRequest> {

  Map mapResponse = {};
  List listOfFacts = [];

  Future fetchData() async{
    http.Response response;
    var url = Uri.parse('https://api-test.geothings.io/api/SupplyHistory/AddSupplyHistory');
    response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);

      });
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API TESTING'),
        centerTitle: true,
      ),
      body: mapResponse == null ? Container() : Text(mapResponse['deviceId'].toString(),
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
    );
  }
}

