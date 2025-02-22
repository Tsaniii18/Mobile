import 'package:flutter/material.dart';
import 'nama_anggota_kelompok.dart';
import 'penjumlahan.dart';
import 'ganjil_genap.dart';
import 'penjumlahan_total.dart';
import 'login.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Penjumlahan dan Pengurangan'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Penjumlahan()),
              );
            },
          ),
          ListTile(
            title: Text('Ganjil atau Genap'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GanjilGenap()),
              );
            },
          ),
          ListTile(
            title: Text('Penjumlah Total Angka'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PenjumlahanTotal()),
              );
            },
          ),
          ListTile(
            title: Text('Nama Kelompok'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NamaAnggotaKelompok()),
              );
            },
          ),
          ListTile(
            title: Text('Keluar'),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                    (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
