import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  final List<Color> colors;
  final double width;
  final double height;

  ColorBox({this.width, this.height, this.colors});

  @override
  Widget build(BuildContext context) {
    final List<Widget> colorRows = [];

    for (int i = 0; i < colors.length; i++) {
      BoxDecoration rowDecoration;

      if (colors.length == 1) {
        colorRows.add(Expanded(
          child: new Container(
            decoration: BoxDecoration(
              color: colors[i],
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
        ));
        break;
      }

      if (i == 0) {
        rowDecoration = BoxDecoration(
            color: colors[i],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ));
      } else if (i == colors.length - 1) {
        rowDecoration = BoxDecoration(
            color: colors[i],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ));
      } else {
        rowDecoration = BoxDecoration(color: colors[i]);
      }

      colorRows.add(Expanded(
        child: new Container(
          decoration: rowDecoration,
        ),
      ));
    }

    return Container(
      width: this.width,
      height: this.height,
      child: Column(children: colorRows),
    );
  }
}
