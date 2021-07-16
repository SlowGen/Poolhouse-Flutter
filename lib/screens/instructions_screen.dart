import 'package:flutter/material.dart';
import 'package:poolhouse/constants.dart';
import '../widgets/instruction_tile.dart';

class Instructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InstructionTile(
            icon: Icon(Icons.add),
            iconColor: kAccentColorGreen,
            headlineText: 'Add Server',
            bodyText:
                'Add servers here. Tips will be split based on number of hours worked. Enter zero for contributers that don\'t get a cut (like a manager)',
          ),
          InstructionTile(
            icon: Icon(Icons.remove),
            iconColor: kAccentColorOrange,
            headlineText: 'Add Tipout',
            bodyText:
                'Use slider to select tipout percentage. Be sure to use TOTAL percentage of all tipouts.',
          ),
          InstructionTile(
            icon: Icon(Icons.calculate_outlined),
            iconColor: kPrimaryColorPeach,
            headlineText: 'Calculate',
            bodyText:
                'Click to see allocation. Reset to start over and back to edit.',
          ),
          InstructionTile(
            icon: Icon(Icons.email_outlined),
            iconColor: kPrimaryColorPeach,
            headlineText: 'Email',
            bodyText:
                'For additional help or feedback, reach out to me at info@slowgen.dev',
          ),
        ],
      ),
    );
  }
}
