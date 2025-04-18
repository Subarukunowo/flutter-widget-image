import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Example',
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
        title: const Text('Data Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const Text(
              'Data Mahasiswa',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            DataTable(
              columns: const [
                DataColumn(label: Text('No')),
                DataColumn(label: Text('NIM')),
                DataColumn(label: Text('NAMA')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('1106315')),
                  DataCell(Text('Depandi Enda')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('1106316')),
                  DataCell(Text('Budi Handoyo')),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
