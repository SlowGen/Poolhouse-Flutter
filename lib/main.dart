import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import './constants.dart';

import './models/ad_state.dart';

import './screens/splash_screen.dart';
import 'screens/primary_screen.dart';
import './screens/results_screen.dart';
import './models/server_data.dart';
import './models/tipout_data.dart';

Future main() async {
  await dotenv.load();
  WidgetsFlutterBinding.ensureInitialized();
  final initFuture = MobileAds.instance.initialize();
  final adState = AdState(initFuture);
  Provider.debugCheckInvalidValueType = null;
  runApp(
    Provider.value(
      value: adState,
      builder: (context, child) => PoolHouseWithAds(),
    ),
  );
}

class PoolHouseWithAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ServerData(),
        ),
        ChangeNotifierProvider(
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
          PrimaryScreen.id: (context) => PrimaryScreen(),
          ResultsScreen.id: (context) => ResultsScreen(),
        },
      ),
    );
  }
}
