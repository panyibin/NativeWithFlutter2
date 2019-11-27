import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("SecondPage")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("data"),
            Container(
              child: Text(
                "Google",
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
              color: Colors.red,
            ),
            RaisedButton(
              child: Text("raisedButton"),
              onPressed: () {
                print('tap RaisedButton');
              },
            ),
            GestureDetector(
              child: Text('GestureButton'),
              onTap: () {
                print('tap GestureDetector');
              },
            )
          ],
        ));
  }
}
