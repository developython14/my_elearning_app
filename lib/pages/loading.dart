import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mustapha/main.dart';
import 'package:http/http.dart';
import 'dart:convert';

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  void getData() async {
    Response response =
        await get(Uri.parse('https://www.breakingbadapi.com/api/characters/1'));
    var bel = jsonDecode(response.body[0]);
    Navigator.pushNamed(context, '/chose');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 14, 92))),
      appBar: AppBar(
        title: Text('mustapha'),
        centerTitle: true,
        foregroundColor: Color.fromARGB(255, 2, 141, 255),
      ),
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 80.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (() => {
                Navigator.pushNamed(context, '/home'),
              }),
          child: Icon(Icons.account_box)),
    );
  }
}
