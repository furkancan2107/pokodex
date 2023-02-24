import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:pokoapp/Sabitler.dart';

import 'package:pokoapp/models/pokoModels.dart';

class PokemonImage extends StatelessWidget {
  final UserModelPokemon image;
  const PokemonImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.bottomRight,
            child: Image(
              height: Sabitler.imageBuyuklugu(),
              width: Sabitler.imageBuyuklugu(),
              image: AssetImage(Sabitler.logo),
            )),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              fit: BoxFit.fitHeight,
              height: Sabitler.imageBuyuklugu(),
              width: Sabitler.imageBuyuklugu(),
              imageUrl: image.img.toString()),
        )
      ],
    );
  }
}
