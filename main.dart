import 'package:flutter/material.dart';
import 'header.dart';
import 'opciones.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: new inicio(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Menu Principal')),
      drawer: new Drawer(


        child: ListView(

          children: <Widget>[

            new UserAccountsDrawerHeader(

              currentAccountPicture: new Pics2(),

              accountName: new Text(
                '        TodoList!', style: const TextStyle(
                fontWeight: FontWeight.w700,
                  fontSize: 45.0,
                fontStyle: FontStyle.italic
              ),
              ),
              accountEmail: new Text(
                '                                        PUCP Designers', style: const TextStyle(
                  fontWeight: FontWeight.w200,
                fontSize: 16.0,

              ),
              ),
              //currentAccountPicture: new Pics2(),

              decoration: new BoxDecoration(
                color: Colors.black,

              ),
            ),
            //Pics2()
            new Divider(
              //color: Colors.red,
              height: 20.0,
            ),
            new ListTile(
              title: new Text('\nNotas guardadas\n', style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0
              ),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new EscribirNota()));
              },
            ),

            new Divider(),

            new ListTile(
              title: new Text('\nActividades guardadas\n', style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0
              ),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new EscribirActividad()));
              },
            ),

            new Divider(),

            new ListTile(
              title: new Text('\nObtén la Versión PRO\n', style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0
              ),),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new verPro()));
              },
            ),
            new Divider(
              color: Colors.black87,

              //height: 60.0,

            )
          ],
        ),
      ),



    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
