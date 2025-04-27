import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // Deklarasi teks
  final String teks1 = "Nilai TextAlign.start pada teks dengan TextDirection.ltr.";
  final String teks2 = "Nilai TextAlign.end pada teks dengan TextDirection.ltr.";
  final String teks3 = ".Nilai TextAlign.start pada teks dengan TextDirection.rtl"; // Contoh teks RTL
  final String teks4 = ".Nilai TextAlign.end pada teks dengan TextDirection.rtl"; // Contoh teks RTL

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
              textAlign: TextAlign.left,
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
              textAlign: TextAlign.right,
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
              textAlign: TextAlign.start, // Akan rata kiri dalam konteks RTL
            ),
          ),

          // Teks 4 (Kanan - RTL)
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            child: Text(
              teks4,
              style: const TextStyle(fontSize: 18.0),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.end, // Akan rata kanan dalam konteks RTL
            ),
          ),
        ],
      ),
    );
  }
}