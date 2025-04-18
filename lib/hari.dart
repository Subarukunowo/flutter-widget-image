import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deskripsi Hari',
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
  String description = '';

  void updateDescription(String day) {
    setState(() {
      switch (day) {
        case 'Senin':
          description = 'Hari yang luar biasa untuk memulai pekerjaanmu.';
          break;
        case 'Selasa':
          description = 'Tetap semangat mengerjakan tugas.';
          break;
        case 'Rabu':
          description = 'Selalu bahagia dan bersyukur dengan apa yang telah diperoleh.';
          break;
        case 'Kamis':
          description = 'Kerja keras untuk menggapai cita-cita.';
          break;
        case 'Jumat':
          description = 'Jangan lupa untuk beribadah.';
          break;
        case 'Sabtu':
          description = 'Selamat weekend.';
          break;
        case 'Minggu':
          description = 'Manfaatkan hari minggu untuk istirahat.';
          break;
          case 'reset' :
          description = '';
          break;
        default:
          description = 'Pilih hari untuk melihat deskripsinya.';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deskripsi Hari'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => updateDescription('Senin'),
              child: const Text('Senin'),
            ),
            ElevatedButton(
              onPressed: () => updateDescription('Selasa'),
              child: const Text('Selasa'),
            ),
            ElevatedButton(
              onPressed: () => updateDescription('Rabu'),
              child: const Text('Rabu'),
            ),
            ElevatedButton(
              onPressed: () => updateDescription('Kamis'),
              child: const Text('Kamis'),
            ),
            ElevatedButton(
              onPressed: () => updateDescription('Jumat'),
              child: const Text('Jumat'),
            ),
            ElevatedButton(
              onPressed: () => updateDescription('Sabtu'),
              child: const Text('Sabtu'),
            ),
            ElevatedButton(
              onPressed: () => updateDescription('Minggu'),
              child: const Text('Minggu'),
            ),
            ElevatedButton(
              onPressed: () => updateDescription('reset'),
              child: const Text('reset'),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
