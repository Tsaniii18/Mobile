import 'package:flutter/material.dart';

class Penjumlahan extends StatefulWidget {
  @override
  _PenjumlahanState createState() => _PenjumlahanState();
}

class _PenjumlahanState extends State<Penjumlahan> {
  final angka1Ctrl = TextEditingController();
  final angka2Ctrl = TextEditingController();
  String hasil = '';

  void _penjumlahan(String operasi) {
    final angka1 = int.tryParse(angka1Ctrl.text);
    final angka2 = int.tryParse(angka2Ctrl.text);

    if (angka1 != null && angka2 != null) {
      setState(() {
        if (operasi == 'tambah') {
          hasil = 'Hasil: ${angka1 + angka2}';
        } else {
          hasil = 'Hasil: ${angka1 - angka2}';
        }
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
      appBar: AppBar(title: Text('Penjumlahan Angka')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: angka1Ctrl,
              decoration: InputDecoration(labelText: 'Angka 1'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: angka2Ctrl,
              decoration: InputDecoration(labelText: 'Angka 2'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => _penjumlahan('tambah'),
                  child: Text('Tambah'),
                ),
                ElevatedButton(
                  onPressed: () => _penjumlahan('kurang'),
                  child: Text('Kurang'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(hasil, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
