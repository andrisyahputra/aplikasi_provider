import 'package:flutter/material.dart';

class Makanan with ChangeNotifier{
  String id;
  String title;
  String category;
  List<String> ingredients;
  int duration;
  String imageUrl;
  bool isFavorite = false;

  Makanan({
    required this.id,
    required this.title,
    required this.category,
    required this.ingredients,
    required this.duration,
    required this.imageUrl,
    this.isFavorite = false
  });

void toggleFavorite(){
  isFavorite = !isFavorite;
  // render ulang tanpa stf. stl bisa
  notifyListeners();
}

}
