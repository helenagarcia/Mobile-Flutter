import 'package:flutter/material.dart';

class ContadorPessoas extends StatefulWidget {
  const ContadorPessoas({Key? key}) : super(key: key);

  @override
  _ContadorPessoasState createState() => _ContadorPessoasState();
}

class _ContadorPessoasState extends State<ContadorPessoas> {
  int contador = 0;
  String valor = "0";

  void _adicionar() {
    setState(() {
      int total = int.parse(valor);
      int contador = total + 1;
      valor = '$contador';
    });
  }

  void _remover() {
    setState(() {
      int total = int.parse(valor);
      int contador = total - 1;

      if (contador <= 0) {
        contador = 0;
      }
      valor = '$contador';
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
      title: Text("APP02 - Contador de Pessoas"),
      centerTitle: true,
      backgroundColor: Colors.indigoAccent,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _tituloCorpo(),
          _campo(),
          _botoes(),
        ],
      ),
    );
  }

  _tituloCorpo() {
    return Container(
      child: Text("Contador de Pessoas na Loja", style: TextStyle(color: Colors.orange, fontSize: 25.0)),
    );
  }
  _campo() {
    return Container(
      child: Text( valor, style: TextStyle(color: Colors.black26, fontSize: 80.0),
        ),
      );
  }

  _botoes() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _botaoAdicionar(),
          _botaoRemover(),
        ],
      ),
    );
  }

  _botaoAdicionar() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0, right: 20.0),
      child: Container(
        height: 70.0,
        child: RaisedButton(
          onPressed: _adicionar,
          child: Text("+",
              style: TextStyle(color: Colors.green[900], fontSize: 50.0)),
          color: Colors.lightGreen,
        ),
      ),
    );
  }

  _botaoRemover() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 70.0,
        child: RaisedButton(
          onPressed: _remover,
          child: Text("-",
              style: TextStyle(color: Colors.red[900], fontSize: 50.0)),
          color: Colors.redAccent,
        ),
      ),
    );
  }
}