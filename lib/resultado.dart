import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Resultado extends StatefulWidget {
  String resultado;
  Resultado(this.resultado);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var caminhoImagem;
    if(widget.resultado == "cara"){
      caminhoImagem = "Imagens/moeda_cara.png";
    }else{
      caminhoImagem = "Imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            Image.asset(caminhoImagem),         
            GestureDetector(
              child: Image.asset("Imagens/botao_voltar.png"),
              onTap: (){
                Navigator.pop(context);
              },
            )

          ],
        ),

      ),

    );
  }
}

