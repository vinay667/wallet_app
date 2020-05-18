import 'package:flutter/material.dart';
import 'package:walletapp/screens/home_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalletHomeScreen(),
      routes: {
        '/home': (BuildContext context) => WalletHomeScreen(),
      },
    );
  }
}
