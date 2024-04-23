import 'package:flutter/material.dart';

class UsuarioView extends StatelessWidget {
  const UsuarioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Usuário"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [Container(), fundoForm(), fotoUsuario()],
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
                        topRight: Radius.circular(20))));
          });
    });
  }

  fotoUsuario() {
    return Builder(builder: (context) {
      const altura = 150.0;
      return Positioned(
          bottom: (MediaQuery.of(context).size.height * .7) - (altura * 0.33),
          child: circulo(Theme.of(context).colorScheme.primary, altura));
    });
  }

  circulo(Color color, double altura) {
    return Builder(builder: (context) {
      return Container(
          width: altura,
          height: altura,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color));
    });
  }
}
