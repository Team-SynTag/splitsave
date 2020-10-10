import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {

  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive? 12 : 10,
      width: isActive? 12 : 10,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFF70D93F) : Color(0xFFC4C4C4),

        borderRadius: BorderRadius.circular(12),
        
      ),
    );
  }
}
