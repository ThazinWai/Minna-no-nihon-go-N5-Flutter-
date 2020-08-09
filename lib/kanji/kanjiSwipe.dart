import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:db_intro/vocab/hiragana.dart';
import 'package:db_intro/kanji/kanjiDetails.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


class KanjiList extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<KanjiList>{

  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: GradientAppBar(
          title: Text('N5 Kanji'),
          backgroundColorStart: Color(0xFFff94a9),
          backgroundColorEnd: Color(0xFF2B2C4E),
        ),
        //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets

        body:
    new Container(
 //   color: Colors.blueGrey,
      //color: Color(0xFFbb596b),
//      decoration: BoxDecoration(
//          gradient: LinearGradient(
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//              colors: [Color(0xFFC9D9FF), Color(0xFFF89B9E)])),
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

                        SizedBox(
                          width: 700,
                          child:
                              new Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.transparent,
                            elevation: 2,


                           child: GestureDetector(
                             onTap: (){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => KanjiDetails()),
                               );
                             },

                            child: Container(

                              padding: new EdgeInsets.all(16.0),
                              child: new Column(

                                children: <Widget>[
                                  new Text('Lesson 1',textAlign: TextAlign.left,style: TextStyle( color: Colors.white,fontSize: 26),),
                                  new Text(''),

                                  new Table(
                                    columnWidths: {
//                                      0: FlexColumnWidth(2),
//                                      1: FlexColumnWidth(3),
//                                      2: FlexColumnWidth(2),
//                                      3: FlexColumnWidth(3),

                                    },
                                    border: TableBorder.all(
                                        color: Colors.white,),
                                    children: [


//                                      TableRow
//                                        (decoration: new BoxDecoration(color: Color(0xFFC9D9FF)),
//                                          children: [
//                                            Text('Kanji', style: TextStyle(fontSize:16 )),
//                                            Text('English Meaning',style: TextStyle(fontSize:16 )),
//                                            Text('Onyomi',style: TextStyle(fontSize:16 )),
//                                            Text('Kunyomi',style: TextStyle(fontSize:16 )),
//                                            Text('JLPT N5 Vocab with Kanji',style: TextStyle(fontSize:16 ))
//                                          ]),


                                      TableRow(children: [
                                        Text('  一  ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('二',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('三',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('四',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                      ]),

                                      TableRow(children: [
                                        Text(' 五 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('六',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('七',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('八',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                      ]),

                                      TableRow(children: [
                                        Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                      ]),

                                      TableRow(children: [
                                        Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                        Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                      ]),

                                    ],
                                  ),
                                ],


                              ),


                            ),

                           ),

                          ),),
                        ),



                        SizedBox(
                          width: 700,
                          child:
                          new Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.transparent,
                              elevation: 2,


                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => KanjiDetails()),
                                  );
                                },

                                child: Container(

                                  padding: new EdgeInsets.all(16.0),
                                  child: new Column(

                                    children: <Widget>[
                                      new Text('Lesson 2',textAlign: TextAlign.left,style: TextStyle( color: Colors.white,fontSize: 26),),
                                      new Text(''),

                                      new Table(
                                        columnWidths: {
//                                      0: FlexColumnWidth(2),
//                                      1: FlexColumnWidth(3),
//                                      2: FlexColumnWidth(2),
//                                      3: FlexColumnWidth(3),

                                        },
                                        border: TableBorder.all(
                                          color: Colors.white,),
                                        children: [


//                                      TableRow
//                                        (decoration: new BoxDecoration(color: Color(0xFFC9D9FF)),
//                                          children: [
//                                            Text('Kanji', style: TextStyle(fontSize:16 )),
//                                            Text('English Meaning',style: TextStyle(fontSize:16 )),
//                                            Text('Onyomi',style: TextStyle(fontSize:16 )),
//                                            Text('Kunyomi',style: TextStyle(fontSize:16 )),
//                                            Text('JLPT N5 Vocab with Kanji',style: TextStyle(fontSize:16 ))
//                                          ]),


                                          TableRow(children: [
                                            Text('  一  ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('二',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('三',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('四',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 五 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('六',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('七',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('八',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                        ],
                                      ),
                                    ],


                                  ),


                                ),

                              ),

                            ),),
                        ),






                        SizedBox(
                          width: 700,
                          child:
                          new Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.transparent,
                              elevation: 2,


                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => KanjiDetails()),
                                  );
                                },

                                child: Container(

                                  padding: new EdgeInsets.all(16.0),
                                  child: new Column(

                                    children: <Widget>[
                                      new Text('Lesson 3',textAlign: TextAlign.left,style: TextStyle( color: Colors.white,fontSize: 26),),
                                      new Text(''),

                                      new Table(
                                        columnWidths: {
//                                      0: FlexColumnWidth(2),
//                                      1: FlexColumnWidth(3),
//                                      2: FlexColumnWidth(2),
//                                      3: FlexColumnWidth(3),

                                        },
                                        border: TableBorder.all(
                                          color: Colors.white,),
                                        children: [


//                                      TableRow
//                                        (decoration: new BoxDecoration(color: Color(0xFFC9D9FF)),
//                                          children: [
//                                            Text('Kanji', style: TextStyle(fontSize:16 )),
//                                            Text('English Meaning',style: TextStyle(fontSize:16 )),
//                                            Text('Onyomi',style: TextStyle(fontSize:16 )),
//                                            Text('Kunyomi',style: TextStyle(fontSize:16 )),
//                                            Text('JLPT N5 Vocab with Kanji',style: TextStyle(fontSize:16 ))
//                                          ]),


                                          TableRow(children: [
                                            Text('  一  ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('二',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('三',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('四',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 五 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('六',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('七',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('八',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                        ],
                                      ),
                                    ],


                                  ),


                                ),

                              ),

                            ),),
                        ),






                        SizedBox(
                          width: 700,
                          child:
                          new Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.transparent,
                              elevation: 2,


                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => KanjiDetails()),
                                  );
                                },

                                child: Container(

                                  padding: new EdgeInsets.all(16.0),
                                  child: new Column(

                                    children: <Widget>[
                                      new Text('Lesson 4',textAlign: TextAlign.left,style: TextStyle( color: Colors.white,fontSize: 26),),
                                      new Text(''),

                                      new Table(
                                        columnWidths: {
//                                      0: FlexColumnWidth(2),
//                                      1: FlexColumnWidth(3),
//                                      2: FlexColumnWidth(2),
//                                      3: FlexColumnWidth(3),

                                        },
                                        border: TableBorder.all(
                                          color: Colors.white,),
                                        children: [


//                                      TableRow
//                                        (decoration: new BoxDecoration(color: Color(0xFFC9D9FF)),
//                                          children: [
//                                            Text('Kanji', style: TextStyle(fontSize:16 )),
//                                            Text('English Meaning',style: TextStyle(fontSize:16 )),
//                                            Text('Onyomi',style: TextStyle(fontSize:16 )),
//                                            Text('Kunyomi',style: TextStyle(fontSize:16 )),
//                                            Text('JLPT N5 Vocab with Kanji',style: TextStyle(fontSize:16 ))
//                                          ]),


                                          TableRow(children: [
                                            Text('  一  ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('二',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('三',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('四',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 五 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('六',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('七',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('八',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                        ],
                                      ),
                                    ],


                                  ),


                                ),

                              ),

                            ),),
                        ),






                        SizedBox(
                          width: 700,
                          child:
                          new Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.transparent,
                              elevation: 2,


                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => KanjiDetails()),
                                  );
                                },

                                child: Container(

                                  padding: new EdgeInsets.all(16.0),
                                  child: new Column(

                                    children: <Widget>[
                                      new Text('Lesson 5',textAlign: TextAlign.left,style: TextStyle( color: Colors.white,fontSize: 26),),
                                      new Text(''),

                                      new Table(
                                        columnWidths: {
//                                      0: FlexColumnWidth(2),
//                                      1: FlexColumnWidth(3),
//                                      2: FlexColumnWidth(2),
//                                      3: FlexColumnWidth(3),

                                        },
                                        border: TableBorder.all(
                                          color: Colors.white,),
                                        children: [


//                                      TableRow
//                                        (decoration: new BoxDecoration(color: Color(0xFFC9D9FF)),
//                                          children: [
//                                            Text('Kanji', style: TextStyle(fontSize:16 )),
//                                            Text('English Meaning',style: TextStyle(fontSize:16 )),
//                                            Text('Onyomi',style: TextStyle(fontSize:16 )),
//                                            Text('Kunyomi',style: TextStyle(fontSize:16 )),
//                                            Text('JLPT N5 Vocab with Kanji',style: TextStyle(fontSize:16 ))
//                                          ]),


                                          TableRow(children: [
                                            Text('  一  ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('二',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('三',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('四',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 五 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('六',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('七',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('八',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                        ],
                                      ),
                                    ],


                                  ),


                                ),

                              ),

                            ),),
                        ),







                        SizedBox(
                          width: 700,
                          child:
                          new Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              color: Colors.transparent,
                              elevation: 2,


                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => KanjiDetails()),
                                  );
                                },

                                child: Container(

                                  padding: new EdgeInsets.all(16.0),
                                  child: new Column(

                                    children: <Widget>[
                                      new Text('Lesson 6',textAlign: TextAlign.left,style: TextStyle( color: Colors.white,fontSize: 26),),
                                      new Text(''),

                                      new Table(
                                        columnWidths: {
//                                      0: FlexColumnWidth(2),
//                                      1: FlexColumnWidth(3),
//                                      2: FlexColumnWidth(2),
//                                      3: FlexColumnWidth(3),

                                        },
                                        border: TableBorder.all(
                                          color: Colors.white,),
                                        children: [


//                                      TableRow
//                                        (decoration: new BoxDecoration(color: Color(0xFFC9D9FF)),
//                                          children: [
//                                            Text('Kanji', style: TextStyle(fontSize:16 )),
//                                            Text('English Meaning',style: TextStyle(fontSize:16 )),
//                                            Text('Onyomi',style: TextStyle(fontSize:16 )),
//                                            Text('Kunyomi',style: TextStyle(fontSize:16 )),
//                                            Text('JLPT N5 Vocab with Kanji',style: TextStyle(fontSize:16 ))
//                                          ]),


                                          TableRow(children: [
                                            Text('  一  ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('二',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('三',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('四',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 五 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('六',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('七',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('八',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                          TableRow(children: [
                                            Text(' 九 ', textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('十',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('百',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                            Text('千',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize:26 )),
                                          ]),

                                        ],
                                      ),
                                    ],


                                  ),


                                ),

                              ),

                            ),),
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





