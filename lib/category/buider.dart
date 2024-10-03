import 'package:category/category/categoryPage.dart';
import 'package:category/category/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryBuilder extends StatelessWidget {
   CategoryBuilder({super.key,required this.categoryModel});
CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryDetails(pic: categoryModel.pic,name: categoryModel.name,desc: categoryModel.desc)));
      },

      child: Container(
        height: 175,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.red,
            image:DecorationImage(image: AssetImage("${categoryModel.pic}"))
            ,borderRadius: BorderRadius.circular(20) ),
        child:
        Align(
            alignment: AlignmentDirectional.topCenter,
            child: Text("${categoryModel.name}",style: TextStyle(fontSize: 20,color: Colors.white),)),


      ),
    );
  }
}
