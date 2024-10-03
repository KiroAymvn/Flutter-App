import 'package:flutter/cupertino.dart';

class ItemModel{

  String ? pic;
  String? title;
  int? subtitle;
  Icon? Iconfavorite;
  String?desc;

  ItemModel({this.pic, this.title, this.subtitle, this.Iconfavorite,this.desc});
}

List<ItemModel> itemList=[
  ItemModel(pic:"assets/food/burger.png" , title:"burger", subtitle:100, Iconfavorite:Icon(CupertinoIcons.heart_fill),desc: "A big sandwich with huge two pieces of meet "),
  ItemModel(pic:"assets/food/pizza.png" , title:"pizza", subtitle:150, Iconfavorite:Icon(CupertinoIcons.heart_fill) ,desc: "Italian pizza in Egyptian street"),
  ItemModel(pic: "assets/food/spghati.png", title:"spaghetti", subtitle:80, Iconfavorite: Icon(CupertinoIcons.heart_fill),desc: "spaghetti with white sauce needs your mouth"),
  ItemModel(pic: "assets/food/sushi.png", title:"sushi", subtitle:500, Iconfavorite: Icon(CupertinoIcons.heart_fill),desc: "fried and raw"),

];