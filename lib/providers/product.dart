import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.isFavorite = false}); //add them as name arguemnts

    void toggleFavorite(){
    isFavorite =! isFavorite; //change true to false and false to true
    notifyListeners();
  }
}
