import 'dart:math';

import 'package:flutter/material.dart';

final rand = Random();
class Item{
  String name;
  int price;
  Color color; //to replace pictures
  Item({required this.name, required this.price, required this.color});
}

class Category {
  String name;
  List <Item> itemList;

  Category({
    required this.name, 
    required this.itemList, 
  });

}

List <Item> foodItems = List.generate(10, (index) => Item(name:'random food item', price: 10, color: itemColor[rand.nextInt(4)]));
List <Item> fashionItems = List.generate(10, (index) => Item(name:'random fashion item', price: 20, color: itemColor[rand.nextInt(4)]));
List <Item> electronicItems = List.generate(10, (index) => Item(name:'random electronic item', price: 30, color: itemColor[rand.nextInt(4)]));
List <Item> bookItems = List.generate(10, (index) => Item(name:'random book item', price: 10, color: itemColor[rand.nextInt(4)]));

 List <Color> itemColor = const [
  Color(0xFFd0baaf),
  Color(0xFF243047),
  Color(0xFF125e5a),
  Color(0xFF767c84)

 ];

List <Category> categories = [
  Category(name: 'Fashion', itemList: fashionItems),
  Category(name: 'Electronics', itemList: electronicItems),
  Category(name: 'Food', itemList: foodItems),
  Category(name: 'Books', itemList: bookItems),
];

