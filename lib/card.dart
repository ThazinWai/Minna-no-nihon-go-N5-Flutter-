import 'package:flutter/material.dart';
import 'package:db_intro/vocab/hiragana.dart';
import 'package:db_intro/vocab/katakana.dart';
import 'package:db_intro/category_route.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "N5 Vocabulary";

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        home: Scaffold(
            appBar: GradientAppBar(
              title: Text('N5 Vocabulary'),
              backgroundColorStart: Color(0xFFff94a9),
              backgroundColorEnd: Color(0xFF2B2C4E),
            ),
            body: Container(
               color: Colors.transparent,
//                decoration: BoxDecoration(
//                    gradient: LinearGradient(
//                        begin: Alignment.topLeft,
//                        end: Alignment.bottomRight,
//                        colors: [Color(0xFFC9D9FF), Color(0xFFF89B9E)])),
            child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index]),
                  );
                })))));
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;

  final IconData icon;
}

const List<Choice> choices = const [
  const Choice(title: 'Hiragana',icon: Icons.dashboard),
  const Choice(title: 'Katakana', icon: Icons.dashboard),
  const Choice(title: 'Lesson 1', icon: Icons.dashboard),
  const Choice(title: 'Lesson 2', icon: Icons.dashboard),
  const Choice(title: 'Lesson 3', icon: Icons.dashboard),
  const Choice(title: 'Lesson 4', icon: Icons.dashboard),
  const Choice(title: 'Lesson 5', icon: Icons.dashboard),
  const Choice(title: 'Lesson 6', icon: Icons.dashboard),
  const Choice(title: 'Lesson 7', icon: Icons.dashboard),
  const Choice(title: 'Lesson 8', icon: Icons.dashboard),
  const Choice(title: 'Lesson 9', icon: Icons.dashboard),
  const Choice(title: 'Lesson 10', icon: Icons.dashboard),
  const Choice(title: 'Lesson 11', icon: Icons.dashboard),
  const Choice(title: 'Lesson 12', icon: Icons.dashboard),
  const Choice(title: 'Lesson 13', icon: Icons.dashboard),
  const Choice(title: 'Lesson 14', icon: Icons.dashboard),
  const Choice(title: 'Lesson 15', icon: Icons.dashboard),
  const Choice(title: 'Lesson 16', icon: Icons.dashboard),
  const Choice(title: 'Lesson 17', icon: Icons.dashboard),
  const Choice(title: 'Lesson 18', icon: Icons.dashboard),
  const Choice(title: 'Lesson 19', icon: Icons.dashboard),
  const Choice(title: 'Lesson 20', icon: Icons.dashboard),
  const Choice(title: 'Lesson 21', icon: Icons.dashboard),
  const Choice(title: 'Lesson 22', icon: Icons.dashboard),
  const Choice(title: 'Lesson 23', icon: Icons.dashboard),
  const Choice(title: 'Lesson 24', icon: Icons.dashboard),
  const Choice(title: 'Lesson 25', icon: Icons.dashboard),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).accentTextTheme.caption;


    return Card(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFff94a9), Color(0xFF2B2C4E)])),
        child: Center(


          child: GestureDetector(
              onTap: () {
                if(choice.title=="Hiragana Chart") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FullScreenImage()),
                  );
                }

                if(choice.title=="Katakana Chart") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FullScreenKata()),
                  );
                }

                if(choice.title=="Lesson 1") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoryRoute()),
                  );
                }


              },


            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child:
                    Icon(choice.icon, size: 45.0, color: textStyle.color)),
                Text(choice.title, style: textStyle),
              ]),

        )
        )

      ),
    );
  }
}




