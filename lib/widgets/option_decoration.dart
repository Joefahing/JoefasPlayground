import 'package:flutter/material.dart';

class OptionDecoration extends StatelessWidget {
  final double size;
  final double width;

  OptionDecoration({this.size = 15.0, this.width = 60});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              height: size,
              width: size,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red)),
          Container(
              height: size,
              width: size,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.orange)),
          Container(
              height: size,
              width: size,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.green))
        ],
      ),
    );
  }
}
