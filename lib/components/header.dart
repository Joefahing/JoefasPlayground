import 'package:flutter/material.dart';

import '../experience.dart';
import '../aboutme.dart';
import '../constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(
        vertical: primaryPadding * 2,
        horizontal: primaryPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Flex(
        mainAxisAlignment:
            screenWidth > shrinkWidth ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
        direction: screenWidth > shrinkWidth ? Axis.horizontal : Axis.vertical,
        children: [
          Expanded(
            child: Text(
              'Joefa Cao',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Expanded(
            child: Flex(
              direction: Axis.horizontal,
              mainAxisAlignment:
                  screenWidth > shrinkWidth ? MainAxisAlignment.end : MainAxisAlignment.center,
              children: [
                TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: smallPadding),
                      child: Text('About Me', style: Theme.of(context).textTheme.button),
                    )),
                SizedBox(
                  width: smallPadding,
                ),
                TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: smallPadding),
                      child: Text('Experience', style: Theme.of(context).textTheme.button),
                    )),
                SizedBox(
                  width: smallPadding,
                ),
                TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: smallPadding),
                      child: Text('Projects', style: Theme.of(context).textTheme.button),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
