import 'package:flutter/material.dart';
import './option_decoration.dart';

class TerminalWindow extends StatelessWidget {
  final double height;
  final Widget content;
  final Text windowTitle;

  TerminalWindow({this.height, this.content, this.windowTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(6)),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              blurRadius: 10,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5))),
              height: 35,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Center(child: windowTitle),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: OptionDecoration(),
                  )
                ],
              )),
          content
        ],
      ),
    );
  }
}
