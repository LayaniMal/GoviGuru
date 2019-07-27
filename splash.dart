import 'package:flutter/material.dart';
import 'dart:ui';

class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
           // primarySwatch: Colors.black
        )
    );
  }
}

class SplashPage extends StatefulWidget{
  @override
  State createState()=>SplashPageState();
}


class SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{
  AnimationController _iconanimationController;
  Animation<double> _iconanimation;

  @override
  void initState(){
    super.initState();
    _iconanimationController= AnimationController(
        vsync: this,
        duration:  Duration(milliseconds: 1000)
    );

    _iconanimation= CurvedAnimation(
        parent:_iconanimationController,
        curve: Curves.easeOut
    );
    _iconanimation.addListener(()=>this.setState((){}));
    _iconanimationController.forward();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //backgroundColor: Colors.black,
      body:Stack(
        fit: StackFit.expand,

        children: <Widget>[
     
        Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Image(
                  image: AssetImage("assets/logoNew.png"),
                  width: 300.0,
                  height: 300.0,
                ),
              SizedBox(height: 50.0,),
               CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.green),
                    ),
              ],
            ),
        )
        ],
      ),
    );
  }
}
