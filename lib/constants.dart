import 'package:flutter/material.dart';

const kPrimaryColorPeach = Color(0xFFffbd59);
const kAccentColorOrange = Color(0xFFff914d);
const kAccentColorGreen = Color(0xFF5f9555);
const kAccentColorPurple = Color(0xFF5271ff);
const kAccentColorBlue = Color(0xFF004aad);

const TextStyle kTextStyleAppBar = TextStyle(
  color: Colors.white,
  fontFamily: 'Limelight',
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 5.0,
  shadows: [
    Shadow(
      blurRadius: 5.0,
      color: kAccentColorGreen,
    ),
  ],
);

const TextStyle kTextStyleWhite = TextStyle(
  color: Colors.white,
  fontFamily: 'Limelight',
  fontSize: 25.0,
);

const TextStyle kTextStyleServerTileName = TextStyle(
  color: kAccentColorGreen,
  fontFamily: 'SpaceMono',
  fontSize: 25.0,
);

const TextStyle kTextStyleServerTileNumbers = TextStyle(
  color: kAccentColorOrange,
  fontFamily: 'SpaceMono',
  fontSize: 20.0,
);

const TextStyle kTextStyleServerTileDelete = TextStyle(
  color: kAccentColorPurple,
  fontFamily: 'SpaceMono',
  fontSize: 15.0,
);
