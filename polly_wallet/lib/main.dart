import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:polly_wallet/constants.dart';
import 'package:polly_wallet/screens/add_funds/add_funds.dart';
import 'package:polly_wallet/screens/home.dart';
import 'package:polly_wallet/screens/importMnemonic.dart';
import 'package:polly_wallet/screens/receive.dart';

import 'package:polly_wallet/screens/splash.dart';
import 'package:polly_wallet/utils/box.dart';

void main() {
  runApp(PollyWallet());
}

class PollyWallet extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _PollyWalletState createState() => _PollyWalletState();
}

class _PollyWalletState extends State<PollyWallet> {
  Widget current = Splash();
  @override
  void initState() {
    BoxUtils.initializeHive().then((value) {
      BoxUtils.checkLogin().then((bool status) {
        if (status) {
          setState(() {
            current = Splash();
          });
        } else {
          setState(() {
            current = ImportMnemonic();
          });
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: bgWhite, // navigation bar color
        statusBarColor: primaryColor,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        systemNavigationBarDividerColor: bgWhite,
        systemNavigationBarIconBrightness: Brightness.dark // status bar color
        ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        platform: TargetPlatform.iOS,
      ),
      routes: {
        importMnemonic: (context) => ImportMnemonic(),
        homeRoute :(context) => Home(),
        receiveRoute : (context) => Receive(),
        addFundRoute : (context) => AddFunds(),
      },
      home: Home(),
    );
  }
}
