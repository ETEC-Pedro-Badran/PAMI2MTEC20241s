import 'package:flutter/material.dart';
import 'package:loja/usuario_form.dart';

import 'login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [Container(), fundoForm(), fundoFotoUsuario(), fotoUsuario()],
      ),
    );
  }

  fundoForm() {
    return Builder(builder: (context) {
      return FutureBuilder(
          future: Future.value(MediaQuery.of(context).size.height * .7),
          builder: (context, snapshot) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 350),
              height: snapshot.data ?? 0,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: LoginForm(),
            );
          });
    });
  }

  fotoUsuario() {
    return Builder(builder: (context) {
      const altura = 130.0;
      return Positioned(
          bottom: (MediaQuery.of(context).size.height * .7) - (altura * 0.30),
          child: circulo(
              Colors.white,
              altura,
              Icon(
                Icons.person,
                size: 60,
              )));
    });
  }

  fundoFotoUsuario() {
    return Builder(builder: (context) {
      const altura = 150.0;
      return Positioned(
          bottom: (MediaQuery.of(context).size.height * .7) - (altura * 0.33),
          child: circulo(
              Theme.of(context).colorScheme.primary, altura, Container()));
    });
  }

  circulo(Color color, double altura, Widget child) {
    return Builder(builder: (context) {
      return Container(
        width: altura - 20,
        height: altura,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: child,
      );
    });
  }
}
