import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:db_intro/card.dart';
import 'package:db_intro/grammar/grammarcard.dart';
import 'package:db_intro/kanji/kanjiSwipe.dart';


class c{
  static final white=Colors.white;
  static final bgColor=Color(0xFF2B2C4E);
  static final bottomBg=Color(0x89545782);
  static final containerBG=Color(0xFF2B2C4E);
  static final navItem=Color(0xFF6f739b);
  static final navItemSelected=Color(0xFFFF56BF);
  static final gradient1=Color(0xFFff94a9);
  static final gradient2=Color(0xFFff94a9);
  static final gradient3=Color(0xFFff40c4);
  static final item1=Color(0xFF1fa2f5);
  static final item2=Color(0xFF8359ff);
  static final item3=Color(0xFFff47e1);
  static final item4=Color(0xFFff9550);
  static final item5=Color(0xFF4975ff);
  static final item6=Color(0xFF0fdf5f);
}


class FullScreenKata extends StatefulWidget {
  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return null;
//  }

  _FullScreenKataState createState() => new _FullScreenKataState();
}


class _FullScreenKataState extends State<FullScreenKata> {

  Widget tt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c.bgColor,
      body: Stack(
        children: <Widget>[
          rotatedContainer(),
          Container(
            padding: EdgeInsets.only(left: 18.0, right: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50.0,),
                customText('Learn Japanese ',c.white,20.0,FontWeight.bold),

                SizedBox(height: 10.0,),
                customText('Improve your skill for everyday',c.white,14.0,FontWeight.normal),

                SizedBox(height: 60.0,),
                customText('JLPT N5',c.white,26.0,FontWeight.normal),



                Container(
                  padding: EdgeInsets.only(top: 20.0),


                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[

                          InkWell(
                            child:Container(
                              child:
                          customIcon('Vocabulary',c.gradient1,Icons.dashboard,14.0, FontWeight.normal),
                          ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyCard()),
                              );
                            },
                    ),


                          SizedBox(width: 20.0,),

                          InkWell(
                            child:Container(
                              child:
                              customIcon('Grammar',c.item1,Icons.book,14.0, FontWeight.normal),

                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => GrammarCard()),
                              );
                            },
                          ),



                       ],

                      ),




                      SizedBox(height: 25.0,),
                      Row(
                        children: <Widget>[

                          InkWell(
                            child:Container(
                              child:
                              customIcon('Kanji',c.item2,Icons.chrome_reader_mode,14.0, FontWeight.normal),

                            ),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => KanjiList()),
                              );
                            },
                          ),


                          SizedBox(width: 20.0,),
                          customIcon('Listening',c.item4,Icons.headset,14.0, FontWeight.normal),
                        ],
                      )


                    ],
                  ),
                )


              ],
            ),
          )
        ],
      ),

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


  Widget customIcon(String text, Color color, IconData icon, double size, FontWeight weight){
    return Stack(
        children: <Widget>[
          ClipRect(
            child: BackdropFilter(
              filter: prefix0.ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
              child: Container(
                padding: EdgeInsets.only(left: 40.0,right: 40.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: c.bottomBg
                ),

                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 40.0,),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: color,
                      child: Icon(icon,color: c.white,),
                    ),
                    SizedBox(height: 40.0,),
                    customText(text, color, size, weight),
                    SizedBox(height: 40.0,)
                  ],
                ),
              ),
            ),
          )
        ],
    );
  }

  Widget customText(String text, Color color, double size, FontWeight weight){
    return Text(text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
    )
    );
  }





}