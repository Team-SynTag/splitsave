import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:split_save/Login/LoginProcess.dart';

class StartingPages extends StatefulWidget {
  @override
  _StartingPagesState createState() => _StartingPagesState();
}

class _StartingPagesState extends State<StartingPages> {

  final _totalDots = 3;
  int _currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              FlatButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context){return LoginProcess1();}
                ));
              }, child:Text("Getting Started"))
            ],
          ),
        )
    );
  }
}
