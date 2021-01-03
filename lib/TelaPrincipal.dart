
import 'package:flutter/material.dart';
import 'package:legueofvoice/TelaIrelia.dart';
import 'package:legueofvoice/TelaJanna.dart';
import 'package:legueofvoice/TelaYasuo.dart';
import 'package:legueofvoice/TelaZoe.dart';
import 'package:legueofvoice/TelaVayne.dart';
import 'package:legueofvoice/TelaJhin.dart';

class TelaP extends StatefulWidget {
  @override
  _TelaPState createState() => _TelaPState();
}

class _TelaPState extends State<TelaP> {
  void _zoe()
  {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>TelaZoe())

    );
  }

  void _yasuo()
  {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>TelaYasuo())

    );
  }

  void _jhin()
  {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> TelaJhin())

    );
  }

  void _vayne()
  {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>TelaVayne())

    );
  }

  void _janna()
  {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>TelaJanna())

    );
  }

  void _irelia()
  {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=>TelaIrelia())

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        title: Text("League of Voice"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/logolol.png"),
            Padding(
              padding: EdgeInsets.only(top:50),

              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: <Widget>[


                  RaisedButton(
                    onPressed: ()
                    {
                      _janna();
                    },


                    child: Text("Janna", style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),


                  ),
                  RaisedButton(
                    onPressed: ()
                    {
                      _zoe();
                    },


                    child: Text("Zoe", style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),


                  )


                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:50),

              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  RaisedButton(
                    onPressed: ()
                    {
                      _irelia();
                    },


                    child: Text("Irelia", style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),


                  ),
                  RaisedButton(
                    onPressed: ()
                    {
                      _yasuo();
                      },

                    child: Text("Yasuo", style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),


                  )


                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top:50),

              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: <Widget>[


                  RaisedButton(
                    onPressed: ()
                    {
                      _vayne();
                    },


                    child: Text("Vayne", style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),


                  ),
                  RaisedButton(
                    onPressed: ()
                    {
                      _jhin();
                    },


                    child: Text("Jhin", style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),),


                  )


                ],
              ),
            ),




          ],
        ),
      ),
      );
  }
}
