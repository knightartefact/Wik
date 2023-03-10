class Recipe {
  final String name;
  final String image;

  Recipe({
    required this.name,
    required this.image,
  });

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
        name: json['strMeal'] as String,
        image: json['strMealThumb'] as String,
    );
  }

  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'Recipe {name: $name, image: $image}';
  }
}
