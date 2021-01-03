import 'package:flutter/material.dart';
import 'dart:math';

class TelaIrelia extends StatefulWidget {
  @override
  _TelaIreliaState createState() => _TelaIreliaState();
}

class _TelaIreliaState extends State<TelaIrelia> {
  var  _fraseGerada = "Clique Abaixo Para Gerar Uma Frase";
  var _frases = [
    "Você não sabe o que é um fardo até ter milhares de pessoas  seguindo cada palavra suas.",
    "Você dança no seu próprio ritmo, mas a terra está tocando os tambores de guerra",
    "nunca matei gente de verdade, apenas noxianos",
    "Minha dança tem 42 formas, mas eles só verão uma"

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
            Image.asset("imagens/Irelia_Render.png", width: 200,),
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
