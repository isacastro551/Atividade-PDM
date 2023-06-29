import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

  final String texto;
  final void Function() quandoSelecionar;

  Resposta(this.texto, this.quandoSelecionar);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 12, bottom: 12),
      child:
          ElevatedButton(onPressed: quandoSelecionar, child: Text(this.texto)),
    );
  }
}