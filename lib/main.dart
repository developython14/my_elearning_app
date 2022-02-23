// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';


var list = ["mustapha", "samir", "fares", "abdelkader", "yacine"];
var i = 0;
  
class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _RandomWordsState extends State<RandomWords> {
    @override
    Widget build(BuildContext context) {
      final wordPair = list[i];
      return Text(wordPair);
    }
  }

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('rigth app'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 182, 31, 46),
        ),
        body: const Center(child:  Text(RandomWords()),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            },
          child: const Icon(Icons.navigation),
        ),
      ),
    ),
  );
}

