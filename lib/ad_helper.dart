import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';
//import 'package:flutter/material.dart';

class AdHelper {
  Future<InitializationStatus> initilization;
  AdHelper(this.initilization);
  static String get bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/6300978112';

  static initialize() {
    MobileAds.instance.initialize();
  }

  //static BannerAd createBannerAd() {
   // BannerAd ad = BannerAd(
       // adUnitId: 'ca-app-pub-3940256099942544/6300978111',
        //size: AdSize.banner,
        //request: AdRequest(),
        //listener: BannerAdListener(
            //onAdFailedToLoad: (Ad ad, LoadAdError error) =>
               // print('prob in code')));
    //return ad;
  //}
}
