import 'package:flutter/material.dart';
import 'dart:math';

class TelaZoe extends StatefulWidget {
  @override
  _TelaZoeState createState() => _TelaZoeState();
}

class _TelaZoeState extends State<TelaZoe> {
  var  _fraseGerada = "Clique Abaixo Para Gerar Uma Frase";
  var _frases = [
    " HIEEEI ! Vamos fazer muitos amigos! Muitos amigos por aqui! E vai ser demais porque eles são demais e vamos fazer  uma festa demais com bolo e tudo mais. Hã... Hã... Será que eu faço bolinhos da lua de chocolate ou morango? BOLINHOS DA LUA DE CHOCOLATE E MORANGO!!",
    "Meninas altas não estão com nada!",
    "Ah... Fiquei tonta",
    "Hora da sonequinha! "
  ];

  void _gerarFrase()
  {
    var numeroSorteado = Random().nextInt(3);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases de Campeões do LOL"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.black)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/zoe.png", width: 150),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black

              ),

            ),
            RaisedButton(
              child: Text("Nova Frase", style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold

              ),),
              color: Colors.black,
              onPressed: _gerarFrase,
            )
          ],

        ),
      ),

    );
  }
}

