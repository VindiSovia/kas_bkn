import 'package:kas_bkn/constant/route_constants.dart';
import 'package:kas_bkn/pages/AddExpenditurePage.dart';
import 'package:kas_bkn/pages/AddIncomePage.dart';
import 'package:kas_bkn/pages/DetailCashFlowPage.dart';
import 'package:kas_bkn/pages/HomePage.dart';
import 'package:kas_bkn/pages/LoginPage.dart';
import 'package:kas_bkn/pages/SettingsPage.dart';
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
      title: "MyCashBook App",
      theme: ThemeData(primaryColor: Colors.white),
      routes: routes,
    );
  }
}
