import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      child: Text(
        "Flight",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
