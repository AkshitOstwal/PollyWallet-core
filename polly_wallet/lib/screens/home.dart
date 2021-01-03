import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polly_wallet/widgets/homeScrollView.dart';
import 'package:polly_wallet/widgets/sendReceive.dart';

import '../constants.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: primaryColor,
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            centerTitle: true,
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                var top = constraints.biggest.height;
                var height = MediaQuery.of(context).size.height * 0.24;
                return FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  centerTitle: true,
                  title: top > height
                      ? SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [SendReceiveButton()],
                          ),
                        )
                      : SizedBox(),
                );
              },
            ),
            title: Text("Testnet"),
            leading:
                Icon(Icons.account_circle_sharp, color: Colors.black54),
            actions: [
              IconButton(
                  icon: Icon(Icons.power_settings_new, color: Colors.black54),
                  onPressed: () {})
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(13)),
                    color: bgWhite
                ),
                alignment: Alignment.center,
                child: HomeScrollView(),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
