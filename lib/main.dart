// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'ustapha belkassem ', initialRoute: '/', routes: {
    '/': (context) => const mustapha(),
    "/start": (context) => const belkassem(),
  }));
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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/start');
        },
        child: Icon(Icons.power_off_outlined),
        focusColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
    );
  }
}

class belkassem extends StatefulWidget {
  const belkassem({Key? key}) : super(key: key);

  @override
  _belkassemState createState() => _belkassemState();
}

class _belkassemState extends State<belkassem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('belkassem web app'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 111, 255, 116),
      ),
      body: Column(
        children: [Text("rah yemchi suitch "), Text("yes i'm gueriier kbiir ")],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        child: Icon(Icons.power_off_outlined),
        focusColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
    );
  }
}
