import 'package:flutter/material.dart';
import 'package:polly_wallet/constants.dart';
import 'package:polly_wallet/utils/hexConverter.dart';
class Login extends StatefulWidget{
  LoginState createState() => LoginState();
}
class LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: offWhite,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("P", style: TextStyle(fontSize: 55),),

            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,50,8,8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.create_new_folder_outlined, color: secondaryColor,size: 60),
                      RaisedButton(
                        color: secondaryColor,
                        onPressed: (){},
                        child: Text("Import Mnemonic", style:TextStyle(color: Colors.white, )),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      width: 5,
                      height: MediaQuery.of(context).size.height*0.1,
                      child: Container(
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fiber_new_rounded, color: secondaryColor,size: 60),
                      RaisedButton(
                        color: secondaryColor,
                        onPressed: (){},
                        child: Text("New Mnemonic",style:TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}