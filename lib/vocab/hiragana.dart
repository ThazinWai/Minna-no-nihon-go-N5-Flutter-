import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xFFF89B9E),
        leading: Builder(
        builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.chevron_left),
        //iconSize: (0.06 * ratio) * width,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () => Navigator.of(context).pop(),
      );
             },
           ),
        ),


      body: Center(
        child: new Image.asset('assets/hira1.png',
          width: size.width,
          height: size.height,
          fit: BoxFit.fill,
        ),
      ),

    );
  }
}