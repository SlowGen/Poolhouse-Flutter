import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';

class AdState {
  AdState(this.initialization);

  Future<InitializationStatus> initialization;

  String get bannerAdUnitId => Platform.isAndroid
      ? "ca-app-pub-3940256099942544/6300978111"
      : "ca-app-pub-3940256099942544/2934735716";

  BannerAdListener get adListener => _adListener;

  BannerAdListener _adListener = BannerAdListener(
    onAdLoaded: (ad) => print('Ad Loaded: ${ad.adUnitId}.'),
    onAdClosed: (ad) => print('Ad Closed: ${ad.adUnitId}.'),
    onAdFailedToLoad: (ad, error) =>
        print('Ad Failed to Load: ${ad.adUnitId}.'),
    onAdOpened: (ad) => print('Ad Opened: ${ad.adUnitId}.'),
  );
}
