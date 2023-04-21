// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter1 = 0;
  int _counter2 = 0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _incrementCounter1_2() {
    setState(() {
      _counter1 += 2;
    });
  }

  void _incrementCounter1_3() {
    setState(() {
      _counter1 += 3;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter2_2() {
    setState(() {
      _counter2 += 2;
    });
  }

  void _incrementCounter2_3() {
    setState(() {
      _counter2 += 3;
    });
  }

  void _reset() {
    setState(() {
      _counter1 = 0;
      _counter2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 255, 89),
        title: Text('Basketball Score Counter'),
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'TEAM A',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '$_counter1',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: _incrementCounter1,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 255, 89)),
                      child: Text(
                        '+1 POINT',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: _incrementCounter1_2,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 255, 89)),
                      child: Text(
                        '+2 POINT',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: _incrementCounter1_3,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 255, 89)),
                      child: Text(
                        '+3 POINT',
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'TEAM B',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '$_counter2',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: _incrementCounter2,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 255, 89)),
                      child: Text(
                        '+1 POINT',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: _incrementCounter2_2,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 255, 89)),
                      child: Text(
                        '+2 POINT',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                      onPressed: _incrementCounter2_3,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 0, 255, 89)),
                      child: Text(
                        '+3 POINT',
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            ),
          ]),
          OutlinedButton(
            onPressed: _reset,
            child: Text(
              'RESET',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
