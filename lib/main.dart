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
import 'package:mustapha/pages/form.dart';

void main() {
  runApp(MaterialApp(
      title: 'ustapha belkassem ',
      initialRoute: '/loading',
      routes: {
        '/loading': (context) => const loading(),
        "/chose": (context) => const choose_actor(),
        "/home": (context) => const home(),
        "/form": (context) => const MyApp(),
      }));
}
