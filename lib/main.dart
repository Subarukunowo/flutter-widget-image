import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextAlign App',
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

  final String teks1 = 
      "Nilai TextAlign.start pada teks dengan TextDirection.ltr.";
  final String teks2 = 
      "Nilai TextAlign.end pada teks dengan TextDirection.ltr.";
  final String teks3 = 
      "Nilai TextAlign.start pada teks dengan TextDirection.rtl.";
  final String teks4 = 
      "Nilai TextAlign.end pada teks dengan TextDirection.rtl.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metode Text.textAlign'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
     // Teks 1 (Kiri - LTR)
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            child: Text(
              teks1,
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start, // Kiri
            ),
          ),
          // Teks 2 (Kanan - LTR)
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            child: Text(
              teks2,
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.end  , // Kanan
            ),
          ),
          // Teks 3 (Kiri - RTL)
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            child: Text(
              teks3,
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.start, // Kiri (end dalam RTL)
            ),
          ),
          // Teks 4 (Kanan - RTL)
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(5.0),
            child: Text(
              teks4,
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.end, // Kanan (start dalam RTL)
            ),
          ),
        ],
      ),
    );
  }
}
