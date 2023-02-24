import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokoapp/Sabitler.dart';
import 'package:pokoapp/UiKolayl%C4%B1k.dart';
import 'package:pokoapp/models/pokoModels.dart';
import 'package:pokoapp/pages/detay.dart';
import 'package:pokoapp/widgetlar/pokemonImage.dart';

class listItem extends StatelessWidget {
  final UserModelPokemon pokemon;
  const listItem({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: UiHelper.getPokeColor(pokemon.type![0].toString()),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            pokemon.name ?? "",
            style: Sabitler.getPokemonNameTextStyle(),
          ),
          Chip(
              label: Text(
            pokemon.type![0].toString(),
            style: Sabitler.getPokemonChipTextStyle(),
          )),
          Expanded(child: PokemonImage(image: pokemon)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detay(pokemon: pokemon),
                        ));
                  },
                  child: Text(
                    "Detay Göster",
                    style: TextStyle(
                        color:
                            UiHelper.getPokeColor(pokemon.type![0].toString())),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
