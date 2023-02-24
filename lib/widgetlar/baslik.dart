// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokoapp/Sabitler.dart';
import 'package:pokoapp/UiKolayl%C4%B1k.dart';

class Baslik extends StatelessWidget {
  const Baslik({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UiHelper.getContainer(),
      child: Stack(
        children: [
          Padding(
            padding: UiHelper.getPadding(),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Sabitler.title,
                  style: Sabitler.getTitleTextStyle(),
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              Sabitler.logo,
              width: ScreenUtil().orientation == Orientation.portrait
                  ? 0.2.sh
                  : 0.2.sw,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
