import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:db_intro/vocab/hiragana.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


class KanjiDetails extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<KanjiDetails>{

  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: GradientAppBar(
          title: Text('N5 Kanji Details'),
          backgroundColorStart: Color(0xFFff94a9),
          backgroundColorEnd: Color(0xFF2B2C4E),
        ),
        //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets

        body:new Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
        child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[



                    //   new Text('Kanji (110 words)',textAlign: TextAlign.left,style: TextStyle(color: Colors.black26,fontSize: 30),),

                         new
                        Container(
                             margin: EdgeInsets.only(top: 10, bottom: 10,left: 10,right: 10),
                          width: 700,
                        //  height: 800,
                          child:
                          new ExpansionCard(
                           // margin: EdgeInsets.only(top: 20, bottom: 20),
                            borderRadius: 20,

                            backgroundColor: Color(0xFFC9D9FF),

                            title: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "一",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "One",
                                    style: TextStyle(fontSize: 20, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            children: <Widget>[
                              Container(
                                height: 500.0,
                              //  height: 900,
                                margin: EdgeInsets.symmetric(horizontal:7 ),
                                child: new Column(

                                  children: <Widget>[
                                new Text('Onyomi',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                new Text('ichi, itsu',style: TextStyle(color: Colors.black45,fontSize: 16),),
                                    new Text(" "),

                                    new Text('Kunyomi',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                    new Text('hito(tsu), hito',style: TextStyle(color: Colors.black45,fontSize: 16),),
                                    new Text(" "),


                                    new Text('hito(tsu), hito',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                    new Text('一人 (one person, alone)',style: TextStyle(color: Colors.black45,fontSize: 16),),

],),


                              ),
                            ],
                          )
                        ),





                        new
                        Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10,left: 10,right: 10),
                            width: 700,
                            //  height: 800,
                            child:
                            new ExpansionCard(
                              // margin: EdgeInsets.only(top: 20, bottom: 20),
                              borderRadius: 20,
                              backgroundColor: Color(0xFFC9D9FF),
                              title: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "二",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Two",
                                      style: TextStyle(fontSize: 20, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              children: <Widget>[
                                Container(
                                  height: 500.0,
                                  //  height: 900,
                                    margin: EdgeInsets.symmetric(horizontal:7 ),
                                  child: new Column(

                                    children: <Widget>[
                                      new Text('Onyomi',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('ichi, itsu',style: TextStyle(color: Colors.black45,fontSize: 16),),
                                      new Text(" "),

                                      new Text('Kunyomi',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('hito(tsu), hito',style: TextStyle(color: Colors.black45,fontSize: 16),),
                                      new Text(" "),


                                      new Text('hito(tsu), hito',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('一人 (one person, alone)',style: TextStyle(color: Colors.black45,fontSize: 16),),

                                    ],),


                                ),
                              ],
                            )
                        ),





                        new
                        Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10,left: 10,right: 10),
                            width: 700,
                            //  height: 800,
                            child:
                            new ExpansionCard(
                              // margin: EdgeInsets.only(top: 20, bottom: 20),
                              borderRadius: 20,
                              backgroundColor: Color(0xFFC9D9FF),
                              title: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "三",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Three",
                                      style: TextStyle(fontSize: 20, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              children: <Widget>[
                                Container(
                                  height: 500.0,
                                  //  height: 900,
                                  //  margin: EdgeInsets.symmetric(vertical: ),
                                  child: new Column(

                                    children: <Widget>[
                                      new Text('Onyomi',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('ichi, itsu',style: TextStyle(color: Colors.black45,fontSize: 16),),
                                      new Text(" "),

                                      new Text('Kunyomi',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('hito(tsu), hito',style: TextStyle(color: Colors.black45,fontSize: 16),),
                                      new Text(" "),


                                      new Text('hito(tsu), hito',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('一人 (one person, alone)',style: TextStyle(color: Colors.black45,fontSize: 16),),

                                    ],),


                                ),
                              ],
                            )
                        ),






                        new
                        Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10,left: 10,right: 10),
                            width: 700,
                            //  height: 800,
                            child:
                            new ExpansionCard(
                              // margin: EdgeInsets.only(top: 20, bottom: 20),
                              borderRadius: 20,
//                              background:
//                              Image.asset(
//                                "assets/pinkbg.png",
//                                fit: BoxFit.cover,
//
//                              ),

                              backgroundColor: Color(0xFFC9D9FF),
                              title: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "四",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Four",
                                      style: TextStyle(fontSize: 20, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              children: <Widget>[
                                Container(
                                  height: 500.0,
                                  //  height: 900,
                                  //  margin: EdgeInsets.symmetric(vertical: ),
                                  child: new Column(

                                    children: <Widget>[
                                      new Text('Onyomi',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('ichi, itsu',style: TextStyle(color: Colors.black45,fontSize: 16),),
                                      new Text(" "),

                                      new Text('Kunyomi',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('hito(tsu), hito',style: TextStyle(color: Colors.black45,fontSize: 16),),
                                      new Text(" "),


                                      new Text('hito(tsu), hito',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('一人 (one person, alone)',style: TextStyle(color: Colors.black45,fontSize: 16),),

                                    ],),


                                ),
                              ],
                            )
                        ),




                        new
                        Container(
                            margin: EdgeInsets.only(top: 10, bottom: 10,left: 10,right: 10),
                            width: 700,
                            //  height: 800,
                            child:
                            new ExpansionCard(
                              // margin: EdgeInsets.only(top: 20, bottom: 20),
                              borderRadius: 20,
//                              background:
//                              Image.asset(
//                                "assets/pinkbg.png",
//                                fit: BoxFit.cover,
//
//                              ),
                              backgroundColor: Color(0xFFC9D9FF),
                              title: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "五",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "Five",
                                      style: TextStyle(fontSize: 20, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              children: <Widget>[
                                Container(
                                  height: 500.0,
                                  //  height: 900,
                                  //  margin: EdgeInsets.symmetric(vertical: ),
                                  child: new Column(

                                    children: <Widget>[
                                      new Text('Onyomi',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('ichi, itsu',style: TextStyle(color: Colors.black45,fontSize: 16),),
                                      new Text(" "),

                                      new Text('Kunyomi',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('hito(tsu), hito',style: TextStyle(color: Colors.black45,fontSize: 16),),
                                      new Text(" "),


                                      new Text('hito(tsu), hito',style: TextStyle(color: Colors.blueGrey,fontSize: 20),),
                                      new Text('一人 (one person, alone)',style: TextStyle(color: Colors.black45,fontSize: 16),),

                                    ],),


                                ),
                              ],
                            )
                        ),





                      ]),
                ),
              );
            }
        ),
        ),
      );
  }

}





