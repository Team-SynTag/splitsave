import 'package:flutter/material.dart';
import 'package:split_save/Widgets/UnderlineContainer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            child: Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.12,right: MediaQuery.of(context).size.width*.04),
              child: Column(
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height*.1,),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("DashBoard",
                    style: TextStyle(
                      fontFamily: "Inter",
                      //fontWeight: FontWeight.w500,
                      fontSize: 34
                    ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                      child: Underline(MediaQuery.of(context).size.width*.43)),
                  SizedBox(height: MediaQuery.of(context).size.height*.04,),
                  Container(
                    width: MediaQuery.of(context).size.width*.88,
                    height: MediaQuery.of(context).size.height*.66,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/NoGames.png"
                        )
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
        resizeToAvoidBottomInset: false,
        floatingActionButton: Container(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            onPressed: () {},
            splashColor: Colors.green,

            backgroundColor: Color(0xFF70D93F),
            child: Image.asset('assets/images/addicon.png'),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}


