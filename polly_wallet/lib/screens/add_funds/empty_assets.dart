import 'package:flutter/material.dart';

class EmptyAssetScreen extends StatelessWidget {
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey[300]),
            ),
            Text('Whoops nothing here!'),
            Text(
              'Learn how you can transfer\n Ethereum assets to matic',
              softWrap: true,
              maxLines: 2,
            ),
            FlatButton(
              onPressed: () {},
              color: Colors.lightBlueAccent,
              child: Text('Transfer to Matic'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
            )
          ],
        ),
      ),
    );
  }
}
