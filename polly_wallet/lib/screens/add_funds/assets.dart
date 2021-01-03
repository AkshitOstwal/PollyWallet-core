import 'package:flutter/material.dart';
import 'package:polly_wallet/widgets/assets_list_tile.dart';

class Assets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 500),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(13)),
          color: Colors.white),
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
      _list.add(AssetsListTile(
        iconURL:
            'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/ethereum/ethereum.png',
        name: "Ethereum",
        amount: '456.44',
        price: '0.0004',
        shortName: 'ETH',
      ));
    }
    return _list;
  }
}
