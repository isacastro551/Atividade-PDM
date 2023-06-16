import 'package:flutter/material.dart';

class Perguntas extends StatelessWidget {
   
    String texto;

    Perguntas (this.texto);
 
   const  clicou ({Key? key, required this.texto}) : super(key: key);

   @override
   Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(texto),
    );
  }
 }
