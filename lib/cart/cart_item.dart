import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../gen/assets.gen.dart';

class Cartitem extends HookWidget {
  Cartitem({super.key, required this.deleteItem});

  final Function() deleteItem;

  @override
  Widget build(BuildContext context) {
    var number = useState(1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4.3,
        width: MediaQuery.of(context).size.width / 1.2,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Assets.item1
                    .image(height: MediaQuery.of(context).size.height / 6),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          if (number.value > 1) {
                            number.value--;
                          }
                        },
                        child: Container(
                          height: 30,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(4.0)),
                          child: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(
                        number.value.toString(),
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          number.value++;
                        },
                        child: Container(
                          height: 30,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(4.0)),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.8,
                    child: Text(
                        "Apowery Solar Panel Kit 12V Monocrystalline, Battery Maintainer +10A..."),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 2.0, left: 8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.7,
                    child: const Row(
                      children: [
                        Text(
                          "Kes",
                          style: TextStyle(
                              fontFeatures: [FontFeature.superscripts()],
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "185,876",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "00",
                          style: TextStyle(
                              fontFeatures: [FontFeature.superscripts()],
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: deleteItem,
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)))),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.delete,
                              color: Colors.black,
                              size: 20,
                            ),
                            Text(
                              "Delete",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
