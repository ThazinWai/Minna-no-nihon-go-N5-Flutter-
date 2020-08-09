import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:db_intro/vocab/katakana.dart';

class FirstPage extends StatefulWidget{
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>{

  List<Slide> slides = new List();
  @override
  void initState() {
    super.initState();

    slides.add(
     new Slide(
        //title: "Talk to the world!",
          styleTitle: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'RobotoMono'),
          description: "Learn a language in 10 minutes a day",
          styleDescription: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontStyle: FontStyle.italic,
              fontFamily: 'Raleway'),
          maxLineTextDescription: 2,
          pathImage: "assets/jpp.jpg",

       colorBegin: Color(0xFFff94a9),
       colorEnd: Color(0xFF2B2C4E),
       directionColorBegin: Alignment.topRight,
       directionColorEnd: Alignment.bottomLeft,

     )
    );

    slides.add(

      new Slide(
       // backgroundColor: Colors.white,
    //    backgroundImage: "assets/jpp.jpg",
        title: "Improve your skill for everyday",

        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: 27.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        maxLineTitle: 2,


        description:
        "Learn Japanese Alphabets Easily",
        styleDescription: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          //  fontStyle: FontStyle.italic,
           // backgroundColor: c.bottomBg,
            fontFamily: 'Raleway'),
        marginDescription: EdgeInsets.only(left: 20,right: 20,top: 50,bottom: 50),
        maxLineTextDescription: 2,




       pathImage: "assets/jp.jpg",


        colorBegin: Color(0xFFff94a9),
        colorEnd: Color(0xFF2B2C4E),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
    )

    );
  }

  void onDonePress() {
    Navigator.pushNamed(context, '/Kata');
  }


  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      backgroundColorAllSlides: Colors.black26,
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }



  Widget rotatedContainer(){
    return Positioned(
      top: -100.0,
      left: -10.0,
      child: Transform.rotate(angle:
      15.0,
        child: Container(
          width: 450.0,
          height: 600.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: <Color>[
                    c.gradient1,
                    c.gradient2,
                    c.gradient3
                  ]
              )
          ),
        ),
      ),
    );
  }



}