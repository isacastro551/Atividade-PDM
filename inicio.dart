import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  final VoidCallback iniciarQuestionario;

  Inicio(this.iniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quiz',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            'Responda',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: iniciarQuestionario,
            child: Text('Iniciar'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              textStyle: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}