import 'package:category/Items/model2.dart';
import 'package:flutter/material.dart';

import 'BuilderCart.dart';

class CartPage extends StatelessWidget {
  ItemModel? item2;
  List<ItemModel>cartList;
  int count;
   CartPage({super.key,required this.count,required this.cartList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: cartList.length,
          itemBuilder: (context, index) => BuilderCart(item3: cartList[index],c:count ),
    ),
    );
  }
}
