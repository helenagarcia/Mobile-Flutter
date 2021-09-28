import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController alcool = TextEditingController();
  TextEditingController gasolina = TextEditingController();

  String infoResultado = "Resultado";

  void _alcoolGasolina() {
    setState(() {
      double v_alcool = double.parse(alcool.text);
      double v_gasolina = double.parse(gasolina.text);

      double precoLitro = v_alcool / v_gasolina;

      if (precoLitro <= 0.7) {
        infoResultado = "Álcool é mais vantajoso!";
      } else {
        infoResultado = "Gasolina é mais vantajosa!";
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
      title: Text("APP04 - Álcool ou Gasolina"),
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
          _campo("Preço do Álcool", alcool),
          _campo("Preço da Gasolina", gasolina),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _imagem() {
    return Image.network(
      "assets/images/alcool_gasolina.png",
      height: 100,
      width: 100,
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