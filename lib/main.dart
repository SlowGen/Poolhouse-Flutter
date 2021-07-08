import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './constants.dart';

import './screens/splash_screen.dart';
import './screens/enter_data_screen.dart';
import './screens/results_screen.dart';
import './models/server_data.dart';
import './models/tipout_data.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(PoolHouseNoAds());
}

class PoolHouseNoAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) => ServerData(),
        ),
        Provider(
          create: (__) => TipoutData(),
        ),
      ],
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
          ResultsScreen.id: (context) => ResultsScreen(),
        },
      ),
    );
  }
}
