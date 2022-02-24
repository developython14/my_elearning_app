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
            Text('$name',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 25, 116, 128))),
            Icon(
              Icons.panorama_fisheye_outlined,
              color: Colors.green,
              size: 20.0,
            ),
            Icon(
              Icons.mail,
              color: Color.fromARGB(255, 216, 117, 110),
            ),
            RaisedButton(onPressed: () {}, child: Text("click here")),
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
