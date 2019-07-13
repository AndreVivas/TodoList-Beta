import 'package:flutter/material.dart';

class back extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      children: <Widget>[

        new Positioned(
          bottom: 0.0,
            child: new Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              height: 750.0,

            )
        )
      ],
    );
  }
}

class GradientBack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
        colors: [
          Color(0xFFffbb00),
          Color(0xFFf13c02)
        ],
        begin: const FractionalOffset(1.0, 0.1),
        end: const FractionalOffset(1.0, 0.9)

        )
      ),
    );
  }
}
