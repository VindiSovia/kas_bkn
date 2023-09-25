import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pemasukan extends StatefulWidget {
  @override
  State<Pemasukan> createState() => _PemasukanState();
}

class _PemasukanState extends State<Pemasukan> {
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pemasukan"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tambah Pemasukan",
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
            Text(''),
            Text(
              "Tanggal:",
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: _dateController,
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.calendar_today),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              readOnly: true,
              onTap: () {
                _selectDate();
              },
            ),
            Text(
              "Nominal:",
              style: TextStyle(fontSize: 18),
            ),
            TextField(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Keterangan:",
              style: TextStyle(fontSize: 18),
            ),
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
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(3000));

    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
