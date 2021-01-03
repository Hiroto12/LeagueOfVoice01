import 'package:flutter/material.dart';
import 'dart:math';

class TelaYasuo extends StatefulWidget {
  @override
  _TelaYasuoState createState() => _TelaYasuoState();
}

class _TelaYasuoState extends State<TelaYasuo> {
  var  _fraseGerada = "Clique Abaixo Para Gerar Uma Frase";
  var _frases = [
    "O que pesa mais, Riven? Sua espada ou a sua consciência?",
    "Morrer é a parte fácil",
    "A morte é como o vento, esta sempre do meu lado - Yasuo",
    "Há três certezas na vida: Honra, Morte e Ressaca"
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
            Image.asset("imagens/yasuoo.png", width: 200),
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
