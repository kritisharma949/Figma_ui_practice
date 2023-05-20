import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: sample(),
    );
  }
}

class sample extends StatefulWidget {
  const sample({super.key});

  @override
  State<sample> createState() => _sampleState();
}

class _sampleState extends State<sample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //title: Text(widget.title),
      ),
      body: Center(
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.center,
          // children: <Widget>[
          // Wrap(
          //   alignment: WrapAlignment.center,
          //   runSpacing: 50,
          //   spacing: 50,
          //   children: [
          //     Container(
          //       height: 60,
          //       width: 60,
          //       color: Colors.blueGrey,
          //     ),
          //     Container(
          //       height: 60,
          //       width: 60,
          //       color: Colors.blueGrey,
          //     ),
          //     Container(
          //       height: 60,
          //       width: 60,
          //       color: Colors.blueGrey,
          //     ),
          //     Container(
          //       height: 60,
          //       width: 60,
          //       color: Colors.blueGrey,
          //     )
          //   ],
          // )

          child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 45,
            backgroundColor: Colors.blueGrey,
            child: Icon(
              Icons.person,
              size: 50,
            ),
          ),
          Positioned(
            bottom: 10,
            right: 4,
            child: Icon(Icons.add_a_photo),
          )
        ],
      )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
