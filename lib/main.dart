import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Action Button App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String fileName = 'images/logo_kemdikbud.png';

  void selectImage(int index) {
    setState(() {
      switch (index) {
        case 0:
          fileName = 'images/logo_kemdikbud.png';
          break;
        case 1:
          fileName = 'images/logo_polbeng.png';
          break;
        case 2:
          fileName = 'images/logo_vokasi.png'; // or 'images/logo-vokasi.png'
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Action Button'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0), // Adjust this value as needed
            child: IconButton(
              icon: const Icon(Icons.book),
              onPressed: () {
                selectImage(0);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0), // Adjust this value as needed
            child: IconButton(
              icon: const Icon(Icons.laptop),
              onPressed: () {
                selectImage(1);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0), // Adjust this value as needed
            child: IconButton(
              icon: const Icon(Icons.anchor),
              onPressed: () {
                selectImage(2);
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            fileName,
            height: 350.0,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
