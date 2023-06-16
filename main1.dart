import 'package:flutter/material.dart';
import 'package:isa/perguntas.dart';

main (){
   runApp(ComponenteInicial());
}

class ComponenteInicial extends StatefulWidget{

  @override
  State<ComponenteInicial> createState() => _ComponenteInicialState();
}

class _ComponenteInicialState extends State<ComponenteInicial> {
var contador = 0;

final perguntas = [
"Sua cor favorita?",
"Seu animal favorito?",
"Seu filme favorito?",
"Seu passatempo favorito?"
];

  void clicou(){
    setState(() {
      contador: contador++;
    });
    print(contador);
  }

Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Jogo de Perguntas"),
          ),
          body: Column(
            children: [
              Perguntas(perguntas[contador]),
              ElevatedButton(
                onPressed: clicou,
                child: Text("Vermelho")),
          
              ElevatedButton(
                onPressed: clicou,
                child: Text("Azul")),
     
              ElevatedButton(
                onPressed: clicou,
                child: Text("Rosa")),           
          ],
          )                       
          )
        ); 
  }
}