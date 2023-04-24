import 'package:flutter/material.dart';

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
            title: Text("Meu Primeiro APP!"),
          ),
          body: Column(
            children: [
              Text(perguntas[contador]),

              ElevatedButton(
                onPressed: clicou,
                child: Text("Enviar")),
          
              ElevatedButton(
                onPressed: clicou,
                child: Text("Cancelar")),
     
              ElevatedButton(
                onPressed: clicou,
                child: Text("Salvar")),           
          ],
          )                       
          )
        ); 
  }
}