// ignore_for_file: file_names
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:pokoapp/models/pokoModels.dart';

class UserService {
  String url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  Future<UserModel?> get() async {
    var res = await http.get(Uri.parse(url));
    if (res.body.isNotEmpty) {
      var jsonBody = UserModel.fromJson(jsonDecode(res.body));
      return jsonBody;
    }
    return null;
  }
}
