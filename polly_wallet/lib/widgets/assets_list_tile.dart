import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      key: Key('abc'),
      child: ListTile(
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
      ),
      actions: <Widget>[
        IconSlideAction(
          caption: 'Deposit',
          color: Colors.green,
          icon: Icons.archive,
          onTap: () => print('Deposit'),
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'send',
          color: Colors.blue,
          icon: Icons.send,
          onTap: () => print('send'),
        ),
      ],
    );
  }
}
