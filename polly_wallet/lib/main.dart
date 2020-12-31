import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:polly_wallet/constants.dart';
import 'package:polly_wallet/screens/importMnemonic.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  Hive.initFlutter("hive");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        importMnemonic : (context) => ImportMnemonic()
      },
      home: ImportMnemonic(),
    );
  }
}

