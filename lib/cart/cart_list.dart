// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
//
// import 'cart_item.dart';
//
// class CartList extends HookWidget {
//   CartList({super.key, required this.deleteItem});
//
//   final Function() deleteItem;
//   @override
//   Widget build(BuildContext context) {
//     late var cartItems = useState([
//       Cartitem(deleteItem: deleteItem),
//       Cartitem(deleteItem: deleteItem),
//       Cartitem(deleteItem: deleteItem),
//     ]);
//     return ListView.builder(
//         itemCount: cartItems.value.length,
//         itemBuilder: (BuildContext context, int index) {
//           return cartItems.value[index];
//         });
//   }
// }
