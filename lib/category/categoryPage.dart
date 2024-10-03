import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryDetails extends StatelessWidget {
  String?pic;
  String?name;
  String?desc;
   CategoryDetails({super.key,this.pic,this.name,this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset(pic!)
              ,SizedBox(height: 20,),
                Text(name!)
            ,SizedBox(height: 20,),
                Text(desc!)
          ],

            ),
          ),
        ),
      ),

    );
  }
}
