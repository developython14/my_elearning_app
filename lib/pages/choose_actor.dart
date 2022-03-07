import 'package:flutter/material.dart';

class choose_actor extends StatefulWidget {
  const choose_actor({Key? key}) : super(key: key);

  @override
  _choose_actorState createState() => _choose_actorState();
}

class _choose_actorState extends State<choose_actor> {
  List<String> listactor = [
    "mustapha",
    "belkasem",
    "hacking ethical",
    "mohamed",
    "mustapha",
    "belkasem",
    "hacking ethical",
    "mohamed",
    "mustapha",
    "belkasem",
    "hacking ethical",
    "mohamed",
    "mustapha",
    "belkasem",
    "hacking ethical",
    "mohamed"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mustapha'),
        centerTitle: true,
        foregroundColor: Color.fromARGB(255, 2, 137, 247),
      ),
      body: ListView.builder(
          itemCount: listactor.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  onTap: () {
                   Navigator.pushNamed(context, '/home' ,{"name":'mustaphawlidaintaya'}),
                  },
                  title: Text(listactor[index]),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/0.jpg'),
                  )),
            );
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: (() => {
                Navigator.pushNamed(context, '/home'),
              }),
          child: Icon(Icons.account_box)),
    );
  }
}
