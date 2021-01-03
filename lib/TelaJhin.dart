import 'package:flutter/material.dart';
import 'dart:math';

class TelaJhin extends StatefulWidget {
  @override
  _TelaJhinState createState() => _TelaJhinState();
}

class _TelaJhinState extends State<TelaJhin> {
  var  _fraseGerada = "Clique Abaixo Para Gerar Uma Frase";
  var _frases = [
    "Sorria! Todos estão assistido!'",
    "O que é um Deus sem mundos para temê-lo",
    "Eu vou te dar uma ópera da morte.",
    "A arte vai consumir a todos nós! "
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
            Image.asset("imagens/jhin.png", width: 300),
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

