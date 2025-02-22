import 'package:flutter/material.dart';

class GanjilGenap extends StatefulWidget {
  @override
  _GanjilGenapState createState() => _GanjilGenapState();
}

class _GanjilGenapState extends State<GanjilGenap> {
  final kontrolAngka = TextEditingController();
  String hasil = '';

  void _cekGanjilGenap() {
    final angka = int.tryParse(kontrolAngka.text);
    if (angka != null) {
      setState(() {
        hasil = angka % 2 == 0 ? 'Genap' : 'Ganjil';
      });
    } else {
      setState(() {
        hasil = 'Input tidak valid';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cek Ganjil Genap')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: kontrolAngka,
              decoration: InputDecoration(labelText: 'Masukkan Angka'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _cekGanjilGenap,
              child: Text('Cek'),
            ),
            SizedBox(height: 20),
            Text(hasil, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
