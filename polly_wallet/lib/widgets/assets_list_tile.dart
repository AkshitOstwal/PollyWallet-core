import 'package:flutter/material.dart';

class AssetsListTile extends StatelessWidget {
  final String iconURL;
  final String amount;
  final String price;
  final String name;
  final String shortName;
  AssetsListTile(
      {this.name, this.shortName, this.iconURL, this.amount, this.price});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        iconURL,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '\$$amount',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            price,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
      title: Text(name),
      subtitle: Text(
        shortName,
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
  }
}
