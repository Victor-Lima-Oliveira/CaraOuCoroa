import 'dart:math';

import 'package:caracoroa/resultado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CaraCoroa()
  ));
}


class CaraCoroa extends StatefulWidget {
  const CaraCoroa({super.key});

  @override
  State<CaraCoroa> createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {
  @override
  Widget build(BuildContext context) {


    void _exibirResultado(){
    var itens = ['cara', 'coroa'];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];


    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Resultado(resultado)));
}


    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            Image.asset("Imagens/logo.png"),
          
            GestureDetector(
              child: Image.asset("Imagens/botao_jogar.png"),
              onTap: _exibirResultado,
            )

          ],
        ),

      ),

    );
  }
}

