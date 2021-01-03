import 'package:flutter/material.dart';
import 'package:polly_wallet/widgets/transaction_tile.dart';

class TransactionHistory extends StatefulWidget {
  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Transaction History'),
        backgroundColor: Colors.blue,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
                color: Colors.white),
            alignment: Alignment.bottomCenter,
            child: TabBar(
              controller: _tabController,
              tabs: [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Sent",
                ),
                Tab(
                  text: "Recieved",
                ),
                Tab(
                  text: "Deposit",
                ),
              ],
              indicator: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: Colors.blue, width: 2))),
              labelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey,
            ),
          ),
        ),
        actions: [IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: TabBarView(controller: _tabController, children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              return TransactionTile(
                imageURL:
                    'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/ethereum/ethereum.png',
                name: "Ethereum",
                amount: '\$456.44',
                price: '0.0004',
                color: Colors.red,
                timeStamp: '13 April 2019',
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              return TransactionTile(
                imageURL:
                    'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/ethereum/ethereum.png',
                name: "Ethereum",
                amount: '456.44',
                price: '0.0004',
                color: Colors.green,
                timeStamp: 'ETH',
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              return TransactionTile(
                imageURL:
                    'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/ethereum/ethereum.png',
                name: "Ethereum",
                amount: '456.44',
                price: '0.0004',
                color: Colors.red,
                timeStamp: 'ETH',
              );
            },
          ),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (_, index) {
              return TransactionTile(
                imageURL:
                    'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/ethereum/ethereum.png',
                name: "Ethereum",
                amount: '456.44',
                price: '0.0004',
                color: Colors.green,
                timeStamp: 'ETH',
              );
            },
          )
        ]),
      ),
    );
  }
}
