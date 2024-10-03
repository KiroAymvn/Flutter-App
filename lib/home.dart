import 'package:card_swiper/card_swiper.dart';
import 'package:category/Items/builder2.dart';
import 'package:category/Items/model2.dart';
import 'package:category/category/buider.dart';
import 'package:category/category/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart/CartPage.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}
List<String> images=[
  "assets/images/ (1).jpeg",
  "assets/images/ (2).jpeg"
];
CategoryModel? categoryModel;
ItemModel ?itemModel;
class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("home Page"),
actions: [
  IconButton(onPressed: (){
   // Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
    }, icon: Icon(CupertinoIcons.cart_fill))
],),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*0.5,
                  child: Swiper(
                    itemBuilder: (context,index){
                      return Image.asset(images[index]);
                    },
                    itemCount: images.length,
                    pagination: SwiperPagination(),
                    autoplay: true,
          
                  ),
                ),
              ),
              const Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text("Category",style: TextStyle(fontSize: 35,color: Colors.black),)),
              SizedBox(
                height: 200,
                child: ListView.separated(
                    itemBuilder: (context,index){
                      return CategoryBuilder(categoryModel: categoryItem[index] );
                    },
                    separatorBuilder: (context, index) => const SizedBox(width: 10),
                    itemCount: categoryItem.length
                  ,scrollDirection: Axis.horizontal,
          
                ),
              ),
          
             // SizedBox(
             //   height: 200,
             //   width: 400,
             //   child: GridView.builder(
             //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 50),
             //      shrinkWrap: true,
             //       itemBuilder: (context,index){
             //     return CategoryBuilder(categoryModel: categoryItem[index]);
             //       },
             //     itemCount: categoryItem.length,
             //       ),
             // )
              SizedBox(height: 20,),
              const Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text("Items",style: TextStyle(fontSize: 25,color: Colors.black),)),
              SizedBox(
                height: 500,
                width: 400,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:2,
                      mainAxisSpacing: 50,
                      crossAxisSpacing: 5,
                      mainAxisExtent: 200),
                   shrinkWrap: true,
                    itemBuilder: (context,index){
                  return ItemBuilder(itemModel: itemList[index]);
                    },
                  itemCount: itemList.length,
                    ),
              )
          
            ],
          ),
        ),
      ) ,
    );
  }
}
