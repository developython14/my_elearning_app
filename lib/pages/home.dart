import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mustapha'),
        centerTitle: true,
        foregroundColor: Color.fromARGB(255, 2, 137, 247),
      ),
      body: Center(
        child: Text("mustapha Home"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (() => {
                Navigator.pushNamed(context, '/loading'),
              }),
          child: Icon(Icons.account_box)),
    );
  }
}
