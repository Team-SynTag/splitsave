import 'package:flutter/material.dart';

class Underline extends StatelessWidget {

  final double wid;
  //final double hei; if needed enable it

  Underline(this.wid);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: MediaQuery.of(context).size.height*.01,
        width: wid,
        decoration: BoxDecoration(
            color: Color(0xFFFFD622),
            borderRadius: BorderRadius.circular(20)
        ),
      );
  }
}
