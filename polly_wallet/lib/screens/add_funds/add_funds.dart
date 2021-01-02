import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polly_wallet/widgets/sendReceive.dart';

import '../../constants.dart';

class AddFunds extends StatefulWidget {
  @override
  AddFundsState createState() => AddFundsState();
}

class AddFundsState extends State<AddFunds> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: true,
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
                              children: [AmountDisplay()],
                            ),
                          )
                        : SizedBox(),
                  );
                },
              ),
              title: Text("Testnet"),
            ),
            SliverToBoxAdapter(child: Assets()),
          ],
        ),
      ),
    );
  }
}

class Assets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 500),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
          color: offWhite),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Assets",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Hide small assets',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            ),
            Column(children: getListItems(17)),
          ],
        ),
      ),
    );
  }

  List<Widget> getListItems(int count) {
    List<Widget> _list = [];
    for (var i = 0; i < count; i++) {
      _list.add(ListTile(
        leading: Image.network(
          'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/ethereum/ethereum.png',
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\$34.89',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              '0.003',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        title: Text('Ethereum'),
        subtitle: Text(
          'ETH',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ));
    }
    return _list;
  }
}

class AmountDisplay extends StatelessWidget {
  static const outlineColor = Colors.black54;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            '\$456.44',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'nsdngi...sdginidsg',
            style: TextStyle(color: Colors.black, fontSize: 8),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.20,
                child: OutlineButton(
                  borderSide: BorderSide(color: outlineColor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40))),
                  child: Text(
                    "Deposit",
                    style: TextStyle(fontSize: 10, color: offWhite),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.19,
                child: OutlineButton(
                  borderSide: BorderSide(color: outlineColor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  child: Text(
                    "Withdraw",
                    style: TextStyle(fontSize: 10, color: offWhite),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
