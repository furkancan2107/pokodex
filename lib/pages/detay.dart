import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokoapp/Sabitler.dart';
import 'package:pokoapp/UiKolayl%C4%B1k.dart';

import 'package:pokoapp/models/pokoModels.dart';
import 'package:pokoapp/pages/pokemonName.dart';

class Detay extends StatefulWidget {
  final UserModelPokemon pokemon;
  const Detay({super.key, required this.pokemon});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtil().orientation == Orientation.portrait
        ? _dikeyMod()
        : _yatayMod();
  }

  Widget _dikeyMod() {
    return Scaffold(
      backgroundColor: UiHelper.getPokeColor(widget.pokemon.type![0] ?? ""),
      body: SafeArea(
        child: Padding(
          padding: UiHelper.getPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back)),
              PokemonNameDetay(pokemon: widget.pokemon),
              Chip(label: Text(widget.pokemon.type![0] ?? "N/A")),
              Expanded(
                  child: ContainerSayfasi(
                pokemon: widget.pokemon,
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _yatayMod() {
    return Scaffold(
        backgroundColor: UiHelper.getPokeColor(widget.pokemon.type![0] ?? ""),
        body: SingleChildScrollView(
            child: ContainerSayfasi(pokemon: widget.pokemon)));
  }
}

class ContainerSayfasi extends StatelessWidget {
  final UserModelPokemon pokemon;
  const ContainerSayfasi({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return _detaylar();
  }

  static rowOlustur(String map, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
            padding: UiHelper.getPadding(),
            child: Text(
              map,
              style: Sabitler.getPokemonListMap(),
            )),
        Padding(
            padding: UiHelper.getPadding(),
            child: Text(
              value.toString(),
              style: Sabitler.getPokemonListvalue(),
            ))
      ],
    );
  }

  Widget _detaylar() {
    return Stack(
      children: [
        Positioned(
            height: 0.15.sh, right: 0, child: Image.asset(Sabitler.logo)),
        Positioned(
          bottom: 0,
          left: 0,
          top: 0.10.sh,
          right: 0,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                rowOlustur("Name", pokemon.name),
                rowOlustur("Height", pokemon.height),
                rowOlustur("Weight", pokemon.weight),
                rowOlustur("AwgSpawns", pokemon.avgSpawns),
                rowOlustur("SpawnTime", pokemon.spawnTime),
                rowOlustur("Weakness", pokemon.weaknesses),
                rowOlustur("Next Evolution", pokemon.nextEvolution),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.h),
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: CachedNetworkImage(
            height: 0.25.sh,
            imageUrl: pokemon.img.toString(),
            placeholder: (context, url) => CircularProgressIndicator(),
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}
