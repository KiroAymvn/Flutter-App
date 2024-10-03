import 'package:category/Items/ItemPage.dart';
import 'package:category/Items/model2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBuilder extends StatelessWidget {
  ItemModel itemModel;
   ItemBuilder({super.key,required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemPage(pic: itemModel.pic,name: itemModel.title,desc: itemModel.desc ,price: itemModel.subtitle, item: itemModel, )));},
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
        ),
        height: 150,
        width: 50,
        child: ListTile(
          leading: Image.asset("${itemModel.pic}",width: 70,height: 100,) ,
          title:Text("${itemModel.title}",style: const TextStyle(color: Colors.white,fontSize: 20),) ,

          subtitle:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround  ,
            children: [
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text("${itemModel.subtitle}")) ,
               const Icon(CupertinoIcons.heart_fill),
            ],
          )

        ),
      ),
    );
  }
}
