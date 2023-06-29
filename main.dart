import 'package:flutter/material.dart';
import './questionario.dart';

void main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatefulWidget {
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class _AulaComponentesState extends State<AulaComponentes> {
  var perguntaAtual = 0;
  var cor = Colors.white;
  var exibirQuestionario = false;

  final List<Map<String, Object>> perguntas = [
    {
      "texto": "Qual é a capital do Brasil?",
      "respostas": ["São Paulo", "Brasília", "Rio de Janeiro", "Salvador"]
    },
    {
      "texto": "Quem descobriu o Brasil?",
      "respostas": ["Cristóvão Colombo", "Pedro Álvares Cabral", "Fernão de Magalhães"]
    },
    {
      "texto": "Qual é a cor do céu?",
      "respostas": ["Vermelho", "Verde", "Azul", "Amarelo"]
    },
  ];

  void iniciarQuestionario() {
    setState(() {
      exibirQuestionario = true;
    });
  }

  void acao() {
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: exibirQuestionario
              ? Text('Pergunta ${perguntaAtual + 1}')
              : Text('Bem-vindo ao Quiz!'),
        ),
        body: exibirQuestionario
            ? Questionario(
                perguntas: perguntas,
                perguntaAtual: perguntaAtual,
                onRespostaSelecionada: acao,
              )
            : Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Teste seus conhecimentos!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Responda às perguntas e veja quantas você acerta!',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 42),
                    ElevatedButton(
                      onPressed: iniciarQuestionario,
                      child: Text('Iniciar Quiz'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 42, vertical: 15),
                        textStyle: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}