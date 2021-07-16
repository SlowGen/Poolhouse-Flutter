import 'package:flutter/material.dart';

import '../constants.dart';

class InstructionTile extends StatelessWidget {
  InstructionTile({
    required this.icon,
    required this.iconColor,
    required this.headlineText,
    this.bodyText = '',
  });

  final Icon icon;
  final Color iconColor;
  final String headlineText;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 8,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: iconColor,
                  shape: BoxShape.circle,
                ),
                child: icon,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                headlineText,
                style: kTextStyleInstructionsHeadline,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0, left: 8.0),
            child: Text(
              bodyText,
              style: kTextStyleInstructionsBody,
            ),
          ),
        ],
      ),
    );
  }
}
