import 'package:flutter/material.dart';

main (){
   runApp(ComponenteInicial());
}

class ComponenteInicial extends StatelessWidget{

  void eventoBotao(){
    print("Clicou");
  }

Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Perguntas e respostas"),
          ),
          body: Column(
            children: [
              ElevatedButton(
                onPressed: eventoBotao,
                child: Text("Enviar")),
          
              ElevatedButton(
                onPressed: eventoBotao,
                child: Text("Cancelar")),
     
              ElevatedButton(
                onPressed: eventoBotao,
                child: Text("Salvar")),
              Text("Aprendendo Programação")
          ],
          )                       
          )
        ); 
  }
}