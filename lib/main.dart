import 'package:db_intro/grammar/grammarcard.dart';
import 'package:db_intro/vocab/katakana.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:db_intro/first_page.dart';
import 'package:db_intro/learn_page.dart';
import 'package:db_intro/category_route.dart';
import 'package:db_intro/category.dart';
import 'package:db_intro/card.dart';
import 'package:db_intro/vocab/hiragana.dart';
import 'package:db_intro/grammar/glesson1.dart';
import 'grammar/grammarcard.dart';
import 'kanji/kanjiSwipe.dart';
import 'dart:ui' as prefix0;
import 'package:outline_gradient_button/outline_gradient_button.dart';

void main() => runApp(MyApp());


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




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => FirstPage(),
        "/Demo":(context)=>Demo(),
        "/Learn":(context)=>MyCard(),
        "/Kata":(context)=>FullScreenKata(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          body1: TextStyle(fontFamily: "Pyidaungsu", fontSize: 10.0),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      body: Center(
        child: Text("Second"),
      ),
    );
  }
}



class Demo extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    final image = new Container(
        margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
        child: new Image(image: AssetImage("assets/empty.png"))
    );

    final text =
    new Container(
        margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
        child: new Text("JLPT N5",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28),
        )
    );


    final button1 =
    new Container(
        margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
        child: new
        OutlineGradientButton(
          child: Text(
            "JLPT N5 - Vocabulary",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
          gradient: LinearGradient(
            stops: [0, 0.5, 0.5, 1],
              colors: [Color(0xFF093637),Color(0xFFA9DDe9), Color(0xFFA9DDe9),Color(0xFF093637)]
          ),
          strokeWidth: 4,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          corners: Corners(topLeft: Radius.elliptical(16, 14), bottomRight: Radius.circular(6)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyCard()),
            );
          },
        ),
    );


    final button2 =
    new Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
      child: new
      OutlineGradientButton(
        child: Text(
          "JLPT N5 - Grammar",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
          textAlign: TextAlign.center,
        ),
        gradient: LinearGradient(
            stops: [0, 0.5, 0.5, 1],
            colors: [Color(0xFF093637),Color(0xFFA9DDD9), Color(0xFFA9DDD9),Color(0xFF093637)]
        ),
        strokeWidth: 4,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        corners: Corners(topLeft: Radius.elliptical(16, 14), bottomRight: Radius.circular(6)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyCard()),
          );
        },
      ),
    );


    final button3 =
    new Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
      child: new
      OutlineGradientButton(
        child: Text(
          "JLPT N5 - Kanji",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
          textAlign: TextAlign.center,
        ),
        gradient: LinearGradient(
            stops: [0, 0.5, 0.5, 1],
            colors: [Color(0xFF093637),Color(0xFFA9DDD9), Color(0xFFA9DDD9),Color(0xFF093637)]
        ),
        strokeWidth: 4,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        corners: Corners(topLeft: Radius.elliptical(16, 14), bottomRight: Radius.circular(6)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyCard()),
          );
        },
      ),
    );


    final button4 =
    new Container(
      margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
      child: new
      OutlineGradientButton(
        child: Text(
          "JLPT N5 - Reading",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
          textAlign: TextAlign.center,
        ),
        gradient: LinearGradient(
            stops: [0, 0.5, 0.5, 1],
            colors: [Color(0xFF093637),Color(0xFFA9DDD9), Color(0xFFA9DDD9),Color(0xFF093637)]
        ),
        strokeWidth: 4,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        corners: Corners(topLeft: Radius.elliptical(16, 14), bottomRight: Radius.circular(6)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyCard()),
          );
        },
      ),
    );



    final button5 =
    new Expanded(
      child: Stack(
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
                      backgroundColor:c.gradient1,
                      child: Icon(Icons.dashboard,color: c.white,),
                    ),
                    SizedBox(height: 40.0,),
                  //  customText(text, color, size, weight),
                    SizedBox(height: 40.0,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );







    final body =new Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFA9DDD9), Color(0xFF093637)])),

        child: new Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              button1, button2, button3,button4,button5],
          ),
        )
    );

    return new Scaffold(
        body:
        body);
  }
}


//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: FlatButton.icon(
//          color: Colors.amberAccent,
//          icon: Icon(Icons.add_a_photo), //`Icon` to display
//          label: Text('Add a Photo'), //`Text` to display
//          onPressed: () {
//          },
//
//        ),
//      ),
//    );
//  }





//    Widget image_carousel = new Container(
//        height: 345.0,
//        child: CarouselSlider(
//        height: 400.0,
//        items: [
//          'https://tse2.mm.bing.net/th?id=OIP.tbLZUJdOwHkpZ3IgBGpN5gHaFj&pid=Api&P=0&w=205&h=154'
//        ].map((i) {
//      return Builder(
//          builder: (BuildContext context) {
//        return Container(
//            width: MediaQuery.of(context).size.width,
//            margin: EdgeInsets.symmetric(horizontal: 5.0),
//            decoration: BoxDecoration(color: Colors.amber),
//            child: GestureDetector(
//            child: Image.network(i, fit: BoxFit.fill),
//    onTap: () {
//    Navigator.push<Widget>(
//    context,
//    MaterialPageRoute(builder: (context) => ImageScreen(i),
//    ),
//    );
//    }));
//          },
//      );
//        }).toList(),
//        ));

//    return Scaffold(
//      body: new Column(
//        children: <Widget>[
//          image_carousel,
//        ],
//      ),
//    );
//  }


//class ImageScreen extends StatefulWidget {
//  final String url;
//  ImageScreen(this.url);
//
//  @override
//  _MyImageScreen createState() => _MyImageScreen(url);
//}
//
//class _MyImageScreen extends State<ImageScreen> {
//  final String url;
//  _MyImageScreen(this.url);
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text('ImageScreen'),
//        ),
//        body: Image.network(url, width: double.infinity));
//  }
//
//}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          bool initState = prefs.getBool("init_state") ?? true;
          int counter = (prefs.getInt('counter') ?? 0) + 1;
          print('Pressed $counter times.');
          print("Init State $initState");
          await prefs.setInt('counter', counter);
          await prefs.setBool("init_state", false);
        },
      ),
    );
  }

}


class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}




