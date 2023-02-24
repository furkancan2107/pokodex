import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokoapp/models/pokoModels.dart';
import 'package:pokoapp/widgetlar/listItem.dart';

class PokList extends StatefulWidget {
  final List<UserModelPokemon?> data;
  const PokList({super.key, required this.data});

  @override
  State<PokList> createState() => _PokListState();
}

class _PokListState extends State<PokList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: ScreenUtil().orientation == Orientation.portrait
          ? Axis.horizontal
          : Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              ScreenUtil().orientation == Orientation.portrait ? 3 : 2),
      itemCount: widget.data.length,
      itemBuilder: (context, index) {
        var veri = widget.data[index]!;
        return listItem(pokemon: veri);
      },
    );
  }
}
