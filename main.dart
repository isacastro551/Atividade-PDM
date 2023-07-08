import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';
import 'components/lista.dart';
import 'components/form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override


    Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => UserData(),
      child: MaterialApp(
      title: 'The App',
      initialRoute: '/',

     routes: {
        '/': (context) => FormComponent(),
        '/lista': (context) => UserListComponent(),
        },
      ),
    );
  }
}
