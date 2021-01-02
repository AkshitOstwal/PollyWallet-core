import 'package:flutter/material.dart';
import 'package:polly_wallet/constants.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "P",
                style: TextStyle(color: Colors.red, fontSize: 55),
              ),
            ),
            Text("PollyWallet")
          ],
        ),
      ),
    );
  }
}
