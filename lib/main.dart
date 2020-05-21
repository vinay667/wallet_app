import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:walletapp/screens/add_money_screen.dart';
import 'package:walletapp/screens/home_screen.dart';
import 'package:walletapp/screens/scanner_screen.dart';
import 'package:walletapp/screens/wallet_transactions_screen.dart';

import 'colors/colors.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: MyColor.violetThemeColor
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);


    return MaterialApp(
      home: WalletHomeScreen(),
      routes: {
        '/home': (BuildContext context) => WalletHomeScreen(),
        '/transactions': (BuildContext context) => WalletTransactionsScreen(),
        '/addmoney': (BuildContext context) => AddMoneyScreen(),
        '/scanner': (BuildContext context) => ScannerScreen(),
      },
    );
  }
}
