import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sabitler {
  static String title = "Pokodex";
  static String logo = "assets/pokeball.png";
  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _sizeDegistir(48),
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _sizeDegistir(20),
    );
  }

  static TextStyle getPokemonChipTextStyle() {
    return TextStyle(color: Colors.white, fontSize: _sizeDegistir(15));
  }

  static _sizeDegistir(int size) {
    return ScreenUtil().orientation == Orientation.portrait
        ? size.sp
        : (size * 1.2).sp;
  }

  static TextStyle getPokemonListMap() {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: _sizeDegistir(20),
    );
  }

  static TextStyle getPokemonListvalue() {
    return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: _sizeDegistir(16),
    );
  }

  static imageBuyuklugu() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.2.sw : 0.3.sh;
  }

  static detayImageBuyuklugu() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.3.sw;
  }
}
