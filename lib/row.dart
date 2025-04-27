import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Widget App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Row Widget'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Baris 1
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text('1'),
            ),
            // Baris 2
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text('2'),
            ),
            // Baris 3
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text('3'),
            ),
            // Baris 4
            Container(
              width: 80,
              height: 80,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: const Text('4'),
            ),
          ],
        ),
      ),
    );
  }
}
