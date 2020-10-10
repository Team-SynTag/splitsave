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
      imageUrl: null,
      title: "Save Money",
      description: "Set and track your expense"
  ),
  Slide(
      imageUrl: null,
      title: "Weekly Stats",
      description: "Based on weekly expense, stats are displayed, helps compare other users."
  ),
  Slide(
      imageUrl: null,
      title: "Win rewards",
      description: "Person saving the most earns the most"
  ),
];