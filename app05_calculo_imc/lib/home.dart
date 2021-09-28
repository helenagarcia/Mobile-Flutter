import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();

  String infoResultado = "Classificação";

  void _alcoolGasolina() {
    setState(() {
      double v_peso= double.parse(peso.text);
      double v_altura = double.parse(altura.text);

      double imc = v_peso / (v_altura * v_altura);

      if (imc < 18.5) {
        infoResultado = "Abaixo do Peso!";
      }
      else if (imc >= 18.5 && imc <= 24.9) {
        infoResultado = "Peso Normal!";
      }
      else if (imc >= 25 && imc <= 29.9) {
        infoResultado = "Sobrepeso!";
      }
      else if (imc >= 30 && imc <= 34.9) {
        infoResultado = "Obesidade Grau I !";
      }
      else if (imc >= 35 && imc <= 39.9) {
        infoResultado = "Obesidade Grau II !";
      }
      else if (imc >= 40) {
        infoResultado = "Obesidade Grau III ou Mórbida!";
      }
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
      title: Text("APP05 - Cálculo do IMC"),
      centerTitle: true,
      backgroundColor: Colors.indigoAccent,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _imagem(),
          _campo("Peso", peso),
          _campo("Altura", altura),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _imagem() {
    return Image.network(
      "assets/images/imc.png",
      height: 150,
      width: 150,
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
              onPressed: _alcoolGasolina,
              child: Text("Verificar",
                  style: TextStyle(color: Colors.black, fontSize: 20.0)),
              color: Colors.lightGreen,
            )
        )
    );
  }

  _texto(textoParaExibir) {
    return Text(
        textoParaExibir,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.red[900], fontSize: 25.0)
    );
  }
}