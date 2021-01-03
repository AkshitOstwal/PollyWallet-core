import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:polly_wallet/constants.dart';
import 'package:polly_wallet/utils/box.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Receive extends StatefulWidget{
  @override
  _ReceiveState createState() => _ReceiveState();
}

class _ReceiveState extends State<Receive> {
  String address;
  @override
  initState(){
    BoxUtils.getAddress().then((str){
      setState(() {
        address = str;
      });
    });
    super.initState();
  }

  @override
  Widget build (BuildContext context){
    var top = MediaQuery.of(context).size.height*0.16;
    return Scaffold(
      backgroundColor: bgWhite,
      appBar: AppBar(
        backgroundColor: bgWhite,
        elevation: 0,
        brightness: Brightness.light,
        title: Text("Receive Payment"),
      ),
      body: address==null?Center(
        child: SpinKitFadingFour(
          size: 40,
          color: primaryColor,
        ),
      ):Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8,top,8,8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Scan QR to send ETH, ERC-20 pr ERC-721", style: homeTextStyle,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: QrImage(
                  data: address,
                  version: QrVersions.auto,
                  size: 200.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(address, maxLines: 2, textAlign: TextAlign.center,style: homeTextStyle,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RawMaterialButton(
                  fillColor: offWhite,
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(Icons.file_copy_outlined),
                  ),
                  onPressed: (){
                    Clipboard.setData(new ClipboardData(text: "your text"));
                    Fluttertoast.showToast(
                      msg: "Address copied",
                    );
                  },
                  shape: CircleBorder(),
                ),
              ),
              Text("Copy", style: homeTextStyle,)
            ],
          ),
        ),
      ),
    );
  }
}