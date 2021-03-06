
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';


final _rowHeight = 10.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);


class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,

      child: Container(
        //color: Color(0xFFbb596b),
        width: double.infinity,
        height: 76,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,

          onTap: () {
           // print('I was tapped!');
          },

          child: Padding(
            padding: EdgeInsets.all(6.0),


            child: Row(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Padding(
                  padding: EdgeInsets.all(4.0),
//                  child: Icon(
//                    iconLocation,
//                    size: 60.0,
//                  ),
                ),



                  Center(
                    child: Container(
                    width: 300,
                  //  height: 400,

                    child: new Text(
                        name,
                        textAlign: TextAlign.left,
//                        overflow: TextOverflow.clip,
//                        softWrap: true,

                        style: TextStyle(
                          fontSize: 16,
                        )
                  ),
                ),
                  ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}