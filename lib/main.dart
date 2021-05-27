import 'package:flutter/material.dart';
import './constants.dart';
import 'package:provider/provider.dart';

import './screens/splash_screen.dart';
import './screens/enter_data_screen.dart';
import './models/server_data.dart';

void main() {
  runApp(PoolHouseNoAds());
}

class PoolHouseNoAds extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ServerData(),
      child: MaterialApp(
          title: 'Pool House Pro',
          theme: ThemeData(
              primaryColor: kPrimaryColorPeach,
              scaffoldBackgroundColor: kPrimaryColorPeach,
              accentColor: kAccentColorGreen,
              highlightColor: kAccentColorOrange),
          initialRoute: SplashScreen.id,
          routes: {
            SplashScreen.id: (context) => SplashScreen(),
            DataEntry.id: (context) => DataEntry(),
          }),
    );
  }
}
