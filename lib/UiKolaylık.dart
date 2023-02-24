import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokoapp/models/pokoModels.dart';

class UiHelper {
  static double getContainer() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;
  }

  static EdgeInsets getPadding() {
    // portrait ==> Vesika yani dikey dikeyse padding 8 değilse width 8
    return ScreenUtil().orientation == Orientation.portrait
        ? EdgeInsets.all(8.h)
        : EdgeInsets.all(8.h);
  }

  static final Map<String, Color> _renkler = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };

  static Color getPokeColor(String type) {
    return _renkler[type] ?? Colors.redAccent;
  }
}
