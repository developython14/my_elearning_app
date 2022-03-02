import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mustapha'),
        centerTitle: true,
        foregroundColor: Color.fromARGB(255, 2, 137, 247),
      ),
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (() => {
                Navigator.pushNamed(context, '/chose'),
              }),
          child: Icon(Icons.account_box)),
    );
  }
}
