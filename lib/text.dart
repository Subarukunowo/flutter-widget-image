import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: "SoftWrap App",
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

    final String longtext =
        "Politeknik Negeri Bengkalis (POLBENG) adalah satu-satunya politeknik negeri yang berada di Riau. "
        "Pada tanggal 29 Juli 2011, Politeknik Bengkalis resmi menjadi PTN dengan nama Politeknik Negeri Bengkalis "
        "melalui Peraturan Menteri Pendidikan Nasional (Permendiknas) No. 28 tahun 2011 tentang Pendiriannya, "
        "Organisasi dan Tata Kerja Politeknik Negeri Bengkalis. Hingga saat ini POLBENG sudah memiliki 8 jurusan "
        "yaitu teknik perkebunan, teknik mesin, teknik elektro, teknik sipil, administrasi negara, teknik informatika, ";

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Metode Text.softWrap'),
            ),
            body: Column(
                children: <Widget>[
                    // First Container
                    Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(10.0),
                        child: const Text(
                            'Politeknik Negeri Bengkalis',
                            style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                            ),
                        ),
                    ),
                    
                    // Second Container for long text
                    Container(
                        margin: const EdgeInsets.all(5.0),
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                            longtext,
                            style: const TextStyle(
                                fontSize: 20.0,
                            ),
                            softWrap: true,
                        ),
                    ),
                ],
            ),
        );
    }
}