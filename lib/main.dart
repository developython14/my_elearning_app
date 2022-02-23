// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  var list = ["mustapha", "samir", "fares", "abdelkader", "yacine"];
  var i = 0;
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('rigth app'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 233, 106, 119),
        ),
        body: Image.asset('assets/2.jpg'), //
        floatingActionButton: FloatingActionButton(
          onPressed: () => {i = (i + 1) % 4},
          child: Icon(Icons.add_card),
        ),
      ),
    ),
  );
}
