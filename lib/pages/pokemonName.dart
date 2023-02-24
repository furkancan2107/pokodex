import 'package:flutter/cupertino.dart';

import 'package:pokoapp/Sabitler.dart';
import 'package:pokoapp/models/pokoModels.dart';

class PokemonNameDetay extends StatelessWidget {
  final UserModelPokemon pokemon;
  const PokemonNameDetay({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            pokemon.name ?? "N/A",
            style: Sabitler.getPokemonNameTextStyle(),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Expanded(
            child: Text(
              "#${pokemon.theNum}",
              style: Sabitler.getPokemonNameTextStyle(),
            ),
          ),
        ),
      ],
    );
  }
}
