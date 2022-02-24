// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  var list = ["mustapha", "samir", "fares", "abdelkader", "yacine"];
  var i = 0;
  var name = list[0];
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('rigth app'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 233, 106, 119),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Color.fromARGB(255, 97, 233, 102),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.amber,
                ))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {i = (i + 1) % 4, name = list[i]},
          child: Icon(Icons.account_box),
        ),
      ),
    ),
  );
}
