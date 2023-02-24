import 'package:flutter/material.dart';
import 'package:pokoapp/models/pokoModels.dart';
import 'package:pokoapp/service/user_Service.dart';
import 'package:pokoapp/widgetlar/baslik.dart';

import '../widgetlar/pokList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserService service = UserService();
  List<UserModelPokemon?> data = [];

  @override
  void initState() {
    service.get().then((value) => {
          if (value != null && value.pokemon != null)
            {
              setState(() {
                data = value.pokemon!;
              })
            }
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Baslik(),
        Expanded(
          child: PokList(
            data: data,
          ),
        ),
      ],
    ));
  }
}
