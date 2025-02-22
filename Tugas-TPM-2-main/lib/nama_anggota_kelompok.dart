import 'package:flutter/material.dart';

class NamaAnggotaKelompok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nama Anggota Kelompok')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Rafly Adiyasa Putra/123220106'),
          ),
          ListTile(
            title: Text('Muhamad Tsani Putra Tronchet/123220115'),
          ),
          ListTile(
            title: Text('Rahmat Syarif Hidayatullah/123220118'),
          ),
        ],
      ),
    );
  }
}
