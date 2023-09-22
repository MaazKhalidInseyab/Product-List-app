import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Factory{
  showPrice(BuildContext context,int price) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Price"),
          content: new Text("\$$price"),
          actions: <Widget>[
            ElevatedButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}