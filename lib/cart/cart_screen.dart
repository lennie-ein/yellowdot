import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yellowdot/cart/cart_item.dart';

import '../gen/assets.gen.dart';

class CartScreen extends HookWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var delete = useState(0);
    var items = useState(3);
    var cartItems = useState([
      Cartitem(deleteItem: () {}),
      Cartitem(deleteItem: () {}),
      Cartitem(deleteItem: () {}),
    ]);
    void deleteItem(int index) {
      cartItems.value.removeAt(index);
      cartItems.value = List.of(cartItems.value);
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "cart".toUpperCase(),
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: cartItems.value.length,
              itemBuilder: (context, index) {
                return Cartitem(deleteItem: () {
                  deleteItem(index);
                });
              })),
    );
  }
}
