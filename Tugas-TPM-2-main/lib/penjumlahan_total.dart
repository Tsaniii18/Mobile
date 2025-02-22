import 'package:flutter/material.dart';

class PenjumlahanTotal extends StatefulWidget {
  @override
  _PenjumlahanTotalState createState() => _PenjumlahanTotalState();
}

class _PenjumlahanTotalState extends State<PenjumlahanTotal> {
  final TextEditingController pengontrolAngka = TextEditingController();
  String hasil = '';

  void _hitungJumlah() {
    final masukan = pengontrolAngka.text;

    // Memisahkan input berdasarkan koma dan mengonversi ke int
    List<int> angka = masukan
        .split('')
        .map((e) => int.tryParse(e.trim()) ?? 0) // Trim untuk menghapus spasi
        .toList();

    int jumlah = angka.fold(0, (a, b) => a + b);

    setState(() {
      hasil = 'Jumlah: $jumlah';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hitung Jumlah Angka')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: pengontrolAngka,
              decoration: const InputDecoration(
                labelText: 'Masukkan Angka',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _hitungJumlah,
              child: const Text('Hitung'),
            ),
            const SizedBox(height: 20),
            Text(hasil, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
