import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String imageURL;
  final String amount;
  final String price;
  final String name;
  final String timeStamp;
  final Color color;
  TransactionTile(
      {this.name,
      this.timeStamp,
      this.imageURL,
      this.amount,
      this.price,
      this.color});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        imageURL,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$amount',
            style: TextStyle(
              color: color,
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
        timeStamp,
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    );
  }
}
