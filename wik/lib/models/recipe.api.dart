import 'dart:convert';
import 'package:wik/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {

  static Future<List<Recipe>> getRecipe() async {
    var client = http.Client();

    var uri = Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?a=Japanese');
    var response = await client.get(uri);

    Map data = jsonDecode(response.body);
    List temp = [];

    for (var i in data['meals']) {
      temp.add(i);
    }
    return Recipe.recipesFromSnapshot(temp);
  }
}
