import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String infoResultado = "...";

  void _numAleatorio() {
    setState(() {
      int numero = new Random().nextInt(10);
      infoResultado = "$numero";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("APP06 - Jogo do Nº Aleatório"),
      centerTitle: true,
      backgroundColor: Colors.indigoAccent,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _imagem(),
          _texto("Pense em um nº de 0 a 10", 20),
          _texto(infoResultado, 60),
          _botao(),
        ],
      ),
    );
  }

  _imagem() {
    return Image.network(
      "assets/images/charada.png",
      height: 150,
      width: 150,
    );
  }

  _texto(textoParaExibir, x) {
    return Text(
        textoParaExibir,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.red[900], fontSize: x)
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.indigo[900])),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.indigo, fontSize: 15.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Container(
            height: 50.0,
            child: RaisedButton(
              onPressed: _numAleatorio,
              child: Text("Descobrir",
                  style: TextStyle(color: Colors.black, fontSize: 20.0)),
              color: Colors.lightGreen,
            )
        )
    );
  }


}