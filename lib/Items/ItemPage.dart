import 'dart:js_interop';

import 'package:category/Items/model2.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart/CartPage.dart';
import '../constant.dart';





class ItemPage extends StatefulWidget {
  ItemModel item;
  String?pic;
  String?name;
  String?desc;
  int?price;


  ItemPage({super.key,this.pic,this.name,this.desc,this.price,required this.item,});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset(widget.pic?? "",width: 500,height: 300,),
                SizedBox(height: 20,),
                Text (widget.name?? "",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,),),
                SizedBox(height: 20,),
                Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(widget.desc??"",style :TextStyle(fontSize: 35,))),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("${widget.price} LE",style: TextStyle(color: Colors.red,fontSize: 30),),
                    Icon(Icons.favorite,color: Colors.red,size: 35,)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 20,child: IconButton(onPressed: (){
                        setState(() {
                          counter++;
                        });
                    }, icon: Icon(CupertinoIcons.add)),
                    ),
                    Text("$counter",style: TextStyle(fontSize: 35),),
                    CircleAvatar(
                      radius: 20,child: IconButton(onPressed: (){

                        setState(() {
                          counter--;
                        });
                    }, icon: Icon(CupertinoIcons.minus),
                    ),)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){
                  if(counter>0)
                    {
                      cartList.add(widget.item);
                    }

                  Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      CartPage(count: counter,cartList: cartList,),));}, child
                    : Text("Add to chart"))
              ],
                  ),
          ),
        ),

      ),
    );
  }

  State<StatefulWidget> createState() {

    throw UnimplementedError();
  }
}
