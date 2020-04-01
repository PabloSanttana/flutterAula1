import 'package:flutter/material.dart';


void main() {
    runApp(
      MaterialApp(
        title: "Contador de Pessoas",
        debugShowCheckedModeBanner: false,
        home: Home()
      ));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pessoa = 0;
  String _infortext = "Pode Entrar";

  void _chagenPessoa( int delta){
    setState(() {

      _pessoa+= delta;

      if( _pessoa < 0){
        _infortext = "Mundo Invertido?!";
      }else if( _pessoa <= 10){
        _infortext = "Pode Entrar!";
      }else{
        _infortext = "Lotado";
      }
    });

  }



  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        Image.asset(
          "image/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_pessoa",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    onPressed: (){
                     _chagenPessoa(1);
                    },
                    child: Text("+1",
                      style: TextStyle(
                          color: Colors.white, fontSize: 40.0,

                      ),
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    onPressed: (){
                      _chagenPessoa(-1);
                    },
                    child: Text("-1",
                      style: TextStyle(
                          color: Colors.white, fontSize: 40.0
                      ),
                    ),
                  ),

                ),

              ],
            ),
            Text(
              _infortext,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  fontSize: 30.0
              ),
            )
          ],
        ),
      ],
    );
  }
}
