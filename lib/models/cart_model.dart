import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ['one', '121', 'lib/images/one.png', Colors.blue.shade100],
    ['one', '121', 'lib/images/two.png', Colors.grey.shade100],
    ['one', '121', 'lib/images/three.png', Colors.pinkAccent.shade100],
    ['one', '121', 'lib/images/four.png', Colors.yellow.shade100],
    ['one', '121', 'lib/images/five.png', Colors.indigo.shade100],
    ['one', '121', 'lib/images/six.png', Colors.deepPurple.shade100],
  ];

  get shopItems => _shopItems;
  //

    List _cartItems=[];
    get cartItems=>_cartItems;
    void addItemToCart(int index){

      _cartItems.add(_shopItems[index]);

      notifyListeners();
    }
    void removeItemFormCart(int index){
      _cartItems.removeAt(index);
      notifyListeners();
    }
    String calculateTotal(){
      double totalPrice=0;
      for(int i=0;i<_cartItems.length;i++){
        totalPrice+=double.parse(_cartItems[i][1]);
      }
      return totalPrice.toStringAsFixed(2);
    }
}
