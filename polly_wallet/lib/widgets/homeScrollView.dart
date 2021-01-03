import 'package:flutter/material.dart';
import 'package:polly_wallet/constants.dart';
import 'package:polly_wallet/test.dart';
class HomeScrollView extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 7,
                width: MediaQuery.of(context).size.width*0.15,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(100),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,25),
                child: FlatButton(
                  onPressed: (){},
                  color: paleWhite,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: ListTile(
                      leading: Image(image: AssetImage(maticIcon)),
                      isThreeLine: false,
                      title: Text("New to Matic?", style: homeHeadingStyle,),
                      subtitle: Text("Learn more about Matic Network."),
                    ),
                  ),
                ),
              )
            ],
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
                        RaisedButton(
                          color: primaryColor,
                          onPressed: (){Navigator.pushNamed(context, addFundRoute);},
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
          Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,0),
            child: Text("Quick options", style: homeHeadingStyle,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,10),
            child: FlatButton(
              onPressed: (){

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(flash),),
                      Text("Assets", style: homeMenuStyle,)
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.black54,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,10),
            child: FlatButton(
              onPressed: (){
                TestClass.TestFunc();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(flash),),
                      Text("Collectibles", style: homeMenuStyle,)
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.black54,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,10),
            child: FlatButton(
              onPressed: (){

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(flash),),
                      Text("Stake", style: homeMenuStyle,)
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.black54,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,10),
            child: FlatButton(
              onPressed: (){

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(flash),),
                      Text("All transactions", style: homeMenuStyle,)
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.black54,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,10,0,10),
            child: FlatButton(
              onPressed: (){

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(flash),),
                      Text("Settings", style: homeMenuStyle,)
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.black54,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}