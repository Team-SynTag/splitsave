import 'package:flutter/cupertino.dart';

class Slide{
  final String imageUrl;
  final String title;
  final String description;

  Slide({
   @required this.imageUrl,
   @required this.title,
    @required this.description
});
}

final slideList=[
  Slide(
      imageUrl: "assets/images/Savings.png",
      title: "Save Money",
      description: "Set and track your expense"
  ),
  Slide(
      imageUrl: "assets/images/gettingStarted2.png",
      title: "Weekly Stats",
      description: "Based on weekly expense, stats are displayed, helps compare other users."
  ),
  Slide(
      imageUrl: "assets/images/gettingStarted3.png",
      title: "Win rewards",
      description: "Person saving the most earns the most"
  ),
];