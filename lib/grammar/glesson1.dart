import 'package:flutter/material.dart';
import 'dart:async';
import 'package:gradient_app_bar/gradient_app_bar.dart';


class GLesson1 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<GLesson1>{

  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: GradientAppBar(
          title: Text('N5 Vocabulary'),
          backgroundColorStart: Color(0xFFff94a9),
          backgroundColorEnd: Color(0xFF2B2C4E),
        ),
        //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets

        body:
        new LayoutBuilder(
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

                        SizedBox(
                          width: 600,
                          child:
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                                child:
                          new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            color: Colors.transparent,
                            elevation: 2,
                            child: new Container(
                              padding: new EdgeInsets.all(32.0),
                              child: new Column(
                                children: <Widget>[
                                  new Text(
                                    "၁။ –ျဖစ္ပါသည္", textAlign: TextAlign.left,
                                    style: new TextStyle(fontSize: 22.0,
                                        fontWeight: FontWeight.w500),),
                                  new Text('--- は --- です',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('---wa --- desu',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('---သည္/က---ျဖစ္ပါသည္။',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('わたし　は　ミラー　です。',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('watashi wa mira- desu.',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('ကၽြန္ေတာ္ မီလာ ျဖစ္ပါတယ္။',
                                      style: new TextStyle(fontSize: 16.0)),

                                ],
                              ),
                            ),
                          ),
                        ),
                        ),


                        SizedBox(
                          width: 600,
                            child:
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                          child:
                          new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            color: Colors.transparent,
                            elevation: 2,
                            child: new Container(
                              padding: new EdgeInsets.all(32.0),
                              child: new Column(
                                children: <Widget>[
                                  new Text(
                                    "၂။ –မဟုတ္ပါဘူး", textAlign: TextAlign.left,
                                    style: new TextStyle(fontSize: 22.0,
                                        fontWeight: FontWeight.w500),),
                                  new Text('--- は --- です',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('--- は --- じゃ（では） ありません',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('---wa ---jya(dewa) arimasen',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('---သည္/က--- မဟုတ္ပါဘူး။',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('わたし　は　がくせい　じゃありません',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('watashi wa gakusei jya arimasen',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('ကၽြန္ေတာ္ ေက်ာင္းသား မဟုတ္ပါဘူး',
                                      style: new TextStyle(fontSize: 16.0)),

                                ],
                              ),
                            ),
                          ),
                        ),
                        ),


                        SizedBox(
                          width: 600,
                            child:
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                          child:
                          new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            color: Colors.transparent,
                            elevation: 2,
                            child: new Container(
                              padding: new EdgeInsets.all(32.0),
                              child: new Column(
                                children: <Widget>[
                                  new Text(
                                    "၃။ –ျဖစ္ပါသလား", textAlign: TextAlign.left,
                                    style: new TextStyle(fontSize: 22.0,
                                        fontWeight: FontWeight.w500),),
                                  new Text('---は　---ですか',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('---wa ---desuka',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('---သည္/က---ျဖစ္ပါသလား။',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('ミラーさん　は　かいしゃいん　ですか？',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('mira-san wa kaisha in desuka',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('မီလာစံက ကုမၸဏီဝန္ထမ္းလား',
                                      style: new TextStyle(fontSize: 16.0)),
                                ],
                              ),
                            ),
                          ),
                        ),),


                        SizedBox(
                          width: 600,
                            child:
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                          child:
                          new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            color: Colors.transparent,
                            elevation: 2,
                            child: new Container(
                              padding: new EdgeInsets.all(32.0),
                              child: new Column(
                                children: <Widget>[
                                  new Text(
                                    "၄။ –လည္းဘဲ–ျဖစ္ပါတယ္", textAlign: TextAlign.left,
                                    style: new TextStyle(fontSize: 22.0,
                                        fontWeight: FontWeight.w500),),
                                  new Text('---も　---です',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('---mo ---desu',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('---လည္းဘဲ---ျဖစ္ပါတယ္။ ',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('サントスさん　も　かいしゃいん　です',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('santosusan mo kaisha in desu ',
                                      style: new TextStyle(fontSize: 16.0)),
                                  new Text('စန္တိုစုစံ လည္းဘဲ ကုမၸဏီဝန္ထမ္း ျဖစ္ပါတယ္',
                                      style: new TextStyle(fontSize: 16.0)),
                                ],
                              ),
                            ),
                          ),
                        ),),




                        SizedBox(
                          width: 700,
                            child:
                            Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Color(0xFFff94a9), Color(0xFFC9D9FF)])),
                          child:
                          new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.transparent,
                            elevation: 2,
                            child: new Container(
                              padding: new EdgeInsets.all(16.0),
                              child: new Column(
                                children: <Widget>[
                                  new Table(
                                    columnWidths: {
                                      0: FlexColumnWidth(4),
                                      1: FlexColumnWidth(2),
                                    },
                                    border: TableBorder.all(
                                        color: Colors.blueGrey),
                                    children: [
                                      TableRow
                                        (decoration: new BoxDecoration(color: Color(0xFFC9D9FF)),
                                          children: [
                                        Text('                                 ဂျပန္စာ၀ါကျ                      '),
                                        Text('ြမန္မာဘာသာ အဓိပၸါယ္      '),
                                      ]),
                                      TableRow(children: [

                                        Text(' わたし は 　マイク（まいく）・ミラ（みら）ーです。'),
                                        Text('ကၽြန္ေတာ္က မိုက္(ခ္)မီလာ ျဖစ္ပါသည္။'),
                                      ]),

                                      TableRow(children: [

                                        Text('サントス（さんとす）さんは　学生（がくせい）じゃ （では）ありません。'),
                                        Text('စန္တိုစုစံက ေက်ာင္းသား မဟုတ္ပါဘူး။')
                                      ]),

                                      TableRow(children: [

                                        Text('ミラ（みら）ーさんは　会社員（かいしゃいん） ですか。'),
                                        Text('မီလာစံက ကုမၸဏီ၀န္ထမ္း ျဖစ္ပါသလား။')
                                      ]),


                                      TableRow(children: [
                                        Text('サントス（さんとす）さんも　会社員（かいしゃいん） です。'),
                                        Text('စန္တိုစုစံလည္းလဲ ကုမၸဏီ၀န္ထမ္း ျဖစ္ပါသည္။')
                                      ]),

                                      TableRow(children: [
                                        Text('「あなたは」　マイク（まいく）・ミラ（みら）ーさんですか。'),
                                        Text('(ခင္ဗ်ား) မိုက္(ခ္)မီလာ ျဖစ္ပါသလား။')
                                      ]),



                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),),






                      ]),
                ),
              );
            }
        ),
      );
  }

}





