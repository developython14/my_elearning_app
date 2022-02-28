// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: mustapha()),
  );
}

class mustapha extends StatefulWidget {
  const mustapha({Key? key}) : super(key: key);

  @override
  _mustaphaState createState() => _mustaphaState();
}

class _mustaphaState extends State<mustapha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mustapha application'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 111, 255, 116),
      ),
      body: Column(
        children: [
          Text("hi i'm mustrapha  belkassem"),
          Text("yes i'm guerrier")
        ],
        mainAxisAlignment: Center,
        crossAxisAlignment: Center,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.power_off_outlined),
        focusColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
    );
  }
}
