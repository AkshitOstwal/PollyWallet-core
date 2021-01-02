import 'package:flutter/material.dart';
import 'package:polly_wallet/constants.dart';

class SendReceiveButton extends StatelessWidget {
  static const outlineColor = Colors.black54;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.20,
            child: OutlineButton(
              borderSide: BorderSide(color: outlineColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              child: Text(
                "Send",
                style: TextStyle(fontSize: 10, color: offWhite),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.19,
            child: RaisedButton(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              color: Colors.white,
              shape: CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.qr_code_scanner,
                  color: Colors.black,
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.19,
            child: OutlineButton(
              borderSide: BorderSide(color: outlineColor),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              child: Text(
                "Receive",
                style: TextStyle(fontSize: 10, color: offWhite),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
