import 'package:flutter/material.dart';
import 'package:polly_wallet/constants.dart';
class HomeScrollView extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text("Supercharge your assets", style: homeHeadingStyle,),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("Transfer Ethereum assets to Matic Network", style: homeTextStyle,),
          ),
          SizedBox(
            height: 168,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(image: AssetImage(ethIcon)),
                        Image(image: AssetImage(downIcon)),
                        Image(image: AssetImage(downIcon)),
                        Image(image: AssetImage(maticIcon)),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Your funds on Ethereum Network", style: homeTextStyle,),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("123 USD", style: homeHeadingStyle,),
                        ),
                        SizedBox(height: 1,),
                        RaisedButton(
                          color: primaryColor,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                          child: Text("Transfer to Matic"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black54,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,10,2),
                child: Image(image: AssetImage(shield),),
              ),
              Text("Secure fast and trusted by Ethereum", style: homeTextStyle,)
            ],
          ),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}