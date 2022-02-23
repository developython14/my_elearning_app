import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to mustapha app'),
        ),
        body: const Center(
          child: randomwords(),
        ),
      ),
    );
  }
}

class randomwords extends StatefulWidget {
  const randomwords({Key? key}) : super(key: key);

  @override
  _randomwordsState createState() => _randomwordsState();
}

class _randomwordsState extends State<randomwords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
