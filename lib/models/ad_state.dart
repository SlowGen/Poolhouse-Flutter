import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:io';

class AdState {
  AdState(this.initialization);

  Future<InitializationStatus> initialization;

  String get instructionsAdUnitId =>
      Platform.isAndroid ? dotenv.env['INSTRUCTIONSAD1'].toString() : '';

  String get resultsAdUnitId =>
      Platform.isAndroid ? dotenv.env['RESULTSAD2'].toString() : '';

  BannerAdListener get adListener => _adListener;

  BannerAdListener _adListener = BannerAdListener(
    onAdLoaded: (ad) => print('Ad Loaded: ${ad.adUnitId}.'),
    onAdClosed: (ad) => print('Ad Closed: ${ad.adUnitId}.'),
    onAdFailedToLoad: (ad, error) =>
        print('Ad Failed to Load: ${ad.adUnitId}.'),
    onAdOpened: (ad) => print('Ad Opened: ${ad.adUnitId}.'),
  );
}
