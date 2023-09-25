import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kas_bkn/main.dart';

class Pemasukan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Pemasukan"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Nominal:"),
          TextField(),
          SizedBox(
            height: 10,
          ),
          Text("Keterangan:"),
          TextField(),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange, // Warna merah
                  ),
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Warna kuning
                  ),
                  child: Text(
                    "Simpan",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/beranda');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Warna merah
                  ),
                  child: Text("<< Kembali"),
                ),
                SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
