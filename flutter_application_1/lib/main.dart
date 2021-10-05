import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(CovIdApp());

class CovIdApp extends StatelessWidget{
  const CovIdApp([Key? key]) : super(key: key);

  @override 
   Widget build(BuildContext context){
     return MaterialApp(
        title: "Mi App",
        home: Inicio(),
     );
   }
 }

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenido a tu COV-ID APP",),
      ),
      body: cuerpo(), 
    ) ;
  }
}

Widget cuerpo(){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2020/04/03/19/02/virus-4999857_1280.png"),
      fit: BoxFit.cover
      )
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Nombre(),
          campoCurp(),
          campoConstrasena(),
          SizedBox(height: 50,),
          BotonRegistrarse()
        ],
      )
      ),
  );
}

Widget Nombre(){
  return Text("Sign in", style: TextStyle(color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold),);
}
Widget campoCurp()
{
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
    child: TextField(decoration: InputDecoration(
      hintText: "CURP",
      fillColor: Colors.white,
      filled: true,
    ),
    ),
  );
}

Widget campoConstrasena()
{
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
      hintText: "Password",
      fillColor: Colors.white,
      filled: true,
    ),
    ),
  );
}

Widget BotonRegistrarse(){
  return FlatButton(
    color: Colors.blueAccent,
    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
    onPressed: (){}, 
    child: Text("Registrarse", style: TextStyle(fontSize: 18, color:Colors.white),)
    );
}