import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()?onPressed;

    GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      required this.color,
        required this.onPressed
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath,height: 54,),
            Text(itemName),
            MaterialButton(
              onPressed: onPressed,
              color: Colors.blueGrey.shade100,
              child: Text('\$$itemPrice',style: const TextStyle(color: Colors.black,fontStyle: FontStyle.italic),),
            )
          ],
        ),
      ),
    );
  }
}
