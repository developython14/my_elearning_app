// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:mustapha/pages/home.dart';
import 'package:mustapha/pages/choose_actor.dart';
import 'package:mustapha/pages/loading.dart';

void main() {
  runApp(MaterialApp(
      title: 'ustapha belkassem ',
      initialRoute: '/loading',
      routes: {
        '/loading': (context) => const loading(),
        "/chose": (context) => const choose_actor(),
        "/home": (context) => const home(),
      }));
}

void getData() async {
  Response response =
      await get(Uri.parse('https://www.breakingbadapi.com/api/characters/1'));
  var bel = jsonDecode(response.body[0]);
  print(bel['name']);
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
          Text("yes i'm guerrier"),
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
        backgroundColor: Color.fromARGB(255, 177, 9, 211),
      ),
      body: Column(
        children: [Text("rah yemchi suitch "), Text("yes i'm gueriier kbiir ")],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getData();
        },
        child: Icon(Icons.power_off_outlined),
        focusColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
    );
  }
}
