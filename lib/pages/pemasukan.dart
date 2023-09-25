import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pemasukan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tambah Pemasukan"),
        ),
        body: Column(
          children: [
            Text("Tanggal"),
            TextFormField(
              controller: _controller,
            )
          ],
        ));
  }

  Future<void> pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(3000),
      builder: (context, child) => Theme(
        data: ThemeData().copyWith(
          colorScheme: const ColorScheme.dark(),
        ),
        child: child ?? const Text(''),
      ),
    );

    if (newDate == null) {
      return;
    }

    setState(() {
      _dateController.text = newDate.toIso8601String();
    });
  }
}
