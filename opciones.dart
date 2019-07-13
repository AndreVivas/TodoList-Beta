import 'package:flutter/material.dart';


class verPro extends StatefulWidget {
  @override
  _verProState createState() => _verProState();
}

class _verProState extends State<verPro> {

  int contador =0;
  List<String> strings = ["Primero", "Debes", "Pagar" ];
  String textoMostrado = "";

  void alPresionar(){
    setState(() {
      textoMostrado=strings[contador];
      contador = contador <2 ? contador +1 : 0;

    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFFffbb00),
        title: new Text(
          'Todavia no eres PRO papu',
          style: TextStyle(color: Color(0xFF03A9F4)),
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(textoMostrado, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new RaisedButton(
                child: new Text("Presióname", style:  new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0),),
                  color: Colors.red,
                  onPressed: alPresionar)
            ],
          ),
        ),
      )
    );
  }
}

class EscribirActividad extends StatefulWidget {
  @override
  EscribirActividadState createState() => new EscribirActividadState();
}

class EscribirActividadState extends State<EscribirActividad> {
  final TextEditingController controller = new TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Actividades guardadas'),
        ),
        body: new Container(
          alignment: Alignment.topRight,
            child: new Center(
          child: new Column(

            children: <Widget>[
              new TextField(

                decoration:
                    new InputDecoration(hintText: "Escriba una nueva actividad"),
                onSubmitted: (String str) {
                  setState(() {
                    result = result + "\n" + str;
                  });
                  controller.text = "";
                },
                controller: controller,
              ),
              new Text(result)
            ],
          ),
        )));
  }
}


class EscribirNota extends StatefulWidget {
  @override
  EscribirNotaState createState() => new EscribirNotaState();
}

class EscribirNotaState extends State<EscribirNota> {
  final TextEditingController controller = new TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Notas guardadas'),
        ),
        body: new Container(
            alignment: Alignment.topRight,
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration:
                    new InputDecoration(hintText: "Escriba una nueva nota"),
                    onSubmitted: (String str) {
                      setState(() {
                        result = result + "\n" + str;
                      });
                      controller.text = "";
                    },
                    controller: controller,
                  ),
                  new Text(result)
                ],
              ),
            )));
  }
}
