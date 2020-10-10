import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:split_save/Login/LoginProcess.dart';
import 'package:split_save/Widgets/SlideScreen.dart';
import 'package:split_save/Widgets/SlidingDots.dart';
import 'package:split_save/models/slide.dart';

class StartingPages extends StatefulWidget {
  @override
  _StartingPagesState createState() => _StartingPagesState();
}

class _StartingPagesState extends State<StartingPages> {

  int _currentPage=0;

  final PageController _pageController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 5),(Timer timer){
      if(_currentPage<2){
        _currentPage++;
      }else{
        _currentPage=0;
      }
      _pageController.animateToPage(
          _currentPage,
          duration:Duration(milliseconds: 300) ,
          curve: Curves.easeIn
      );
    });
  }

  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index){
    setState(() {
      _currentPage=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    PageView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const ScrollPhysics(),
                    controller: _pageController,
                    itemCount: slideList.length,
                      onPageChanged: _onPageChanged,
                      itemBuilder: (context,i)=> SlideItem(i)
                  ),
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 40),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for(int i=0;i<slideList.length;i++)
                                if(i==_currentPage)
                                  SlideDots(true)
                              else
                                SlideDots(false)
                            ],
                          ),
                        )
                      ],
                    )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width*.6,
                  height: MediaQuery.of(context).size.height*.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      color: Color(0xFF70D93F)
                  ),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context){return LoginProcess1();}
                      ));
                    },
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Get Started',style:
                      TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 22.0
                      )
                        ,),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
