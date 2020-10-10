import 'package:flutter/material.dart';
import 'package:split_save/models/slide.dart';

class SlideItem extends StatelessWidget {

  final int index;
  SlideItem(this.index){
    setFactor();
  }
  double factor,factor2;
  double size;
  void setFactor(){
    if(index==1){
      factor=0;
      factor2=.06;
      size=1.12;
    }
    else{
      factor=0;
      factor2=0.12;
      size=1.0;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height*factor,
        ),
        Align(
          child: Text(
            slideList[index].title,
            style: TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.w500,
              fontSize: 28
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*factor2,),
        Image.asset(slideList[index].imageUrl,scale: size,),
        SizedBox(height: MediaQuery.of(context).size.height*.02,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Text(slideList[index].description,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 21
            ),
          ),
        ),
      ],
    );
  }
}
