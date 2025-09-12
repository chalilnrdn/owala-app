import 'package:flutter/material.dart';

class SizeConfig {
  //class MediaQuery adalah class yang berfungsi untuk membuaty aplikasi menjadi responsif dengan cara mengambil ukuran aktual pada layar platform 
  static MediaQueryData _mediaQueryData = MediaQueryData.fromView(
    // ignore: deprecated_member_use
    WidgetsBinding.instance.window
  );
  //variabel untuk menampung dafault size dari aplikasi sebelum dideploy ke platform yang spesifik dan mendapatkan ukuran aktual dari platform tersebut (misal : dideploy ke andorid)
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double defaultSize = 0.0;

// fungsi ini adalah untuk pemanggilan awal ketika aplikasi dijalankan dan unutk mendapatkan ukuran dari layar platform
  void init (BuildContext context) {
    //berfungsi untuk mengambil ukuran aktual dari layar platform
    //karena di dalam variablel _mediaQueryData didalamnya memanggil class media query
    //yang class media query itu sendiri berfungsi untuk mengambil ukuran aktual platform
    _mediaQueryData = MediaQuery.of(context);
    //unutk mengambil hanya data ukuran width saja, begitupula dengan height
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }

}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375.0) * screenWidth;
}