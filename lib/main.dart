import 'package:flutter/material.dart';
import 'package:kas_bkn/pages/pemasukan.dart';

void main() => runApp(Beranda());

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Beranda"),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Rangkuman Bulan Ini",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Pengeluaran: ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "Pemasukan: ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Menu(
                  title: "Tambah Pemasukan",
                  icon: Icons.attach_money,
                  route: '/pemasukan',
                ),
                Menu(
                  title: "Tambah Pengeluaran",
                  icon: Icons.money_off,
                  route: '/pemasukan',
                ),
                Menu(
                  title: "Detail cash flow",
                  icon: Icons.currency_exchange,
                  route: '/pemasukan',
                ),
                Menu(
                  title: "pengaturan",
                  icon: Icons.settings,
                  route: '/pemasukan',
                )
              ],
            )),
          ],
        ),
      ),
      initialRoute: '/',
      routes: {
        '/pemasukan': (context) => Pemasukan(),
      },
    );
  }
}

class Menu extends StatelessWidget {
  Menu({
    required this.title,
    required this.icon,
    required this.route,
  });

  final String title;
  final IconData icon;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(2),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(route);
        },
        splashColor: Colors.lightBlue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
              ),
              Text(title, style: new TextStyle(fontSize: 17))
            ],
          ),
        ),
      ),
    );
  }
}
