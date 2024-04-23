import 'package:flutter/material.dart';
import 'package:loja/usuario_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
        title: 'Loja',
        home: UsuarioView());
  }
}
