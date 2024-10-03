import 'package:category/Items/model2.dart';
import 'package:flutter/material.dart';

class BuilderCart extends StatelessWidget {
  ItemModel item3;
  int ?c;
  List ?i;
   BuilderCart({super.key,required this.item3,required this.c});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20)
      ),
      child: ListTile(
        title: Image.asset("${item3.pic}",height: 80,width: 30,fit: BoxFit.contain, ),
        subtitle: Text("${item3.title}"),
        trailing:Text("${item3.subtitle!*c!}") ,
        leading: Text("$c") ,
      ),
    );


  }
}
