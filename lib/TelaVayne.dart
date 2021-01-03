import 'package:flutter/material.dart';
import 'dart:math';

class TelaVayne extends StatefulWidget {
  @override
  _TelaVayneState createState() => _TelaVayneState();
}

class _TelaVayneState extends State<TelaVayne> {
  var  _fraseGerada = "Clique Abaixo Para Gerar Uma Frase";
  var _frases = [
    "Eles serão purificados",
    "Eu ouço o grito dos inocentes",
    "As sombras devem ser temidas",
    "As trevas devem temer a mim "
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
            Image.asset("imagens/vayne.png", width: 300),
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


