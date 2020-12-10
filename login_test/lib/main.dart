import 'package:flutter/material.dart';

void main () => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
       home: new LoginPage(),
       debugShowCheckedModeBanner: false,
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Form(
                child: new Theme(
                  data: ThemeData(
                    primarySwatch: Colors.teal,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0
                      ),
                    ), 
                  ),
                   child: Container(
                     padding: const EdgeInsets.all(50.0),
                     child: new Column(
                       children: <Widget> [
                         new TextFormField(
                           decoration: new InputDecoration(
                             labelText: "Enter Email",
                           ),
                           keyboardType: TextInputType.emailAddress,
                         ),
                         new TextFormField(
                           decoration: new InputDecoration(
                             labelText: "Enter Password",
                           ),
                           keyboardType: TextInputType.text,
                           obscureText: true,
                         ),
                         new Padding(padding: const EdgeInsets.only(top: 40.0),),
                         new MaterialButton(
                           height: 40.0,
                           color: Colors.red,
                           textColor: Colors.white,
                           child: new Icon(Icons.arrow_right),
                           onPressed: () => {},
                           splashColor: Colors.blueAccent,
                           )
                       ]
                     ),
                  )
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
