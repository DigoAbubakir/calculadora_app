import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget construirBotao(String valor) {
    return Expanded(
      child: OutlineButton(
        padding: new EdgeInsets.all(24.0),
        child: Text(valor,
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
        ),
        onPressed: () {},
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Calculadora"
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.centerRight,
              child: Text("0",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Expanded(
              child: Divider(),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    construirBotao("7"),
                    construirBotao("8"),
                    construirBotao("9"),
                    construirBotao("/"),
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    construirBotao("4"),
                    construirBotao("5"),
                    construirBotao("6"),
                    construirBotao("X"),
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    construirBotao("1"),
                    construirBotao("2"),
                    construirBotao("3"),
                    construirBotao("-"),
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    construirBotao("."),
                    construirBotao("0"),
                    construirBotao("00"),
                    construirBotao("+"),
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    construirBotao("AC"),
                    construirBotao("="),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
