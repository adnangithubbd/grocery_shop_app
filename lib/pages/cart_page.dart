import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_shop_app/models/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<CartModel>(
      builder: (context, value, child) {
        return Column(
          children: [
            Expanded(
                flex: 9,
                child: ListView.builder(
                    itemCount: value.cartItems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 12),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.yellow.shade100),
                          child: ListTile(
                            leading: Image.asset(value.cartItems[index][2]),
                            title: Text(value.cartItems[index][1]),
                            subtitle: Text(value.cartItems[index][0]),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.cancel,
                                color: Colors.red.shade700,
                              ),
                              onPressed: () {
                                value.removeItemFormCart(index);
                              },
                            ),
                          ),
                        ),
                      );
                    })),
            Expanded(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 12, right: 12, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                           Text(
                             'Total price',
                             style: TextStyle(
                               fontStyle: FontStyle.italic,
                             ),
                           ),
                           Text(
                             value.calculateTotal(),
                             style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold),
                           ),
                         ],),
                          MaterialButton(
                            color: Colors.blueAccent,

                            onPressed: (){

                            print('Paiedd... !');
                          },child: Text('Pay Now'),)
                        ],

                      ),
                    ),
                  ),
                ))
          ],
        );
      },
    ));
  }
}
