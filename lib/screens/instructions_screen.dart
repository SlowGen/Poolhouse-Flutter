import 'package:flutter/material.dart';
import 'dart:async';

import 'package:poolhouse/constants.dart';
import '../widgets/instruction_tile.dart';
import '../widgets/right_arrow.dart';
import '../widgets/left_arrow.dart';
import '../widgets/center_arrow.dart';

class Instructions extends StatefulWidget {
  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  String whichToolTip = 'none';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  whichToolTip = 'right';
                });
                Timer(
                  Duration(seconds: 3),
                  () => setState(() {
                    whichToolTip = 'none';
                  }),
                );
              },
              child: InstructionTile(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                iconColor: kAccentColorGreen,
                headlineText: 'Add Server',
                bodyText:
                    'Add servers here. Tips will be split based on number of hours worked. Enter zero for contributers that don\'t get a cut (like a manager)',
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  whichToolTip = 'left';
                });
                Timer(
                  Duration(seconds: 3),
                  () => setState(() {
                    whichToolTip = 'none';
                  }),
                );
              },
              child: InstructionTile(
                icon: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                iconColor: kAccentColorOrange,
                headlineText: 'Add Tipout',
                bodyText:
                    'Use slider to select tipout percentage. Be sure to use TOTAL percentage of all tipouts.',
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  whichToolTip = 'center';
                });
                Timer(
                  Duration(seconds: 3),
                  () => setState(() {
                    whichToolTip = 'none';
                  }),
                );
              },
              child: InstructionTile(
                icon: Icon(
                  Icons.calculate_outlined,
                  color: Colors.white,
                ),
                iconColor: kPrimaryColorPeach,
                headlineText: 'Calculate',
                bodyText:
                    'Click to see allocation. Reset to start over and back to edit.',
              ),
            ),
            InstructionTile(
              icon: Icon(
                Icons.email_outlined,
                color: Colors.white,
              ),
              iconColor: kPrimaryColorPeach,
              headlineText: 'Email',
              bodyText:
                  'For additional help or feedback, reach out to me at info@slowgen.dev',
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 400.0,
              width: 400.0,
              child: whichToolTip == 'left'
                  ? CustomPaint(
                      foregroundPainter: LeftArrow(),
                    )
                  : whichToolTip == 'center'
                      ? CustomPaint(
                          foregroundPainter: CenterArrow(),
                        )
                      : whichToolTip == 'right'
                          ? CustomPaint(
                              foregroundPainter: RightArrow(),
                            )
                          : null,
            ),
          ],
        ),
      ],
    );
  }
}
