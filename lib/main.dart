import 'package:kas_bkn/constant/route_constants.dart';
import 'package:kas_bkn/pages/FormPengeluaran.dart';
import 'package:kas_bkn/pages/FormPemasukan.dart';
import 'package:kas_bkn/pages/ListKeuangan.dart';
import 'package:kas_bkn/pages/Beranda.dart';
import 'package:kas_bkn/pages/Login.dart';
import 'package:kas_bkn/pages/Pengaturan.dart';
import 'package:kas_bkn/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

final routes = {
  loginRoute: (BuildContext context) => LoginPage(),
  homeRoute: (BuildContext context) => HomePage(),
  settingsRoute: (BuildContext context) => SettingsPage(),
  addExpenseRoute: (BuildContext context) => AddExpenditurePage(),
  addIncomeRoute: (BuildContext context) => AddIncomePage(),
  detailCashFlowRoute: (BuildContext context) => DetailCashFlowPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "PENCATATAN KEUANGAN",
      theme: ThemeData(primaryColor: Colors.white),
      routes: routes,
    );
  }
}
