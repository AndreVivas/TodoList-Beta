import 'package:flutter/material.dart';
import 'back.dart';
import 'main.dart';

class inicio extends StatefulWidget{
  @override
  _verInicio createState() => _verInicio();
}


class _verInicio extends State<inicio>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    var button = new InkWell(
      child: new Container(
        margin: new EdgeInsets.only(
          top: 45.0,
          left: 20.0,
          right: 20.0,
        ),

        height: 50.0,
        width: 150.0,



        decoration: new BoxDecoration(


          borderRadius: new BorderRadius.circular(20.0),
          color: Color(0xFFF44336),

        ),

        child: new Center(
          child: new Text(
            "COMENZAR",
            style:  const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),


        ),

      ),
    );








    return new Scaffold(
      body:


      new Stack(
        children: <Widget>[
          new back(),
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(
              top: 50.0,
              bottom: 0.0,

            ),

            child: new Column(
              children: <Widget>[
                new Text(
                  "Bienvenido\n         a\n Todo List!\n",
                  style: const TextStyle(
                    fontSize: 50.0,
                    color: Color(0xFF03A9F4),
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic


                  ),
                ),
            Pics1(),
            button,
            IconButton(
              icon: Icon(Icons.arrow_upward),
              onPressed: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new MyHomePage()));
              },
            ),
              ],
            ),
          )
        ],
      ),

    );



  }
}

class Pics1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/inicio.png');
    var image = new Image(image: assetsImage, width: 275.0, height: 275.0, alignment: Alignment.center);
    return new Container(child: image);



  }
}

class Pics2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('assets/write3.png');
    var image = new Image(image: assetsImage, width: 100.0, height: 100.0, alignment: Alignment.center);
    return new Container(child: image);
  }
}