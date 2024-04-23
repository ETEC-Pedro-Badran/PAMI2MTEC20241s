import 'package:flutter/material.dart';

class UsuarioForm extends StatelessWidget {
  const UsuarioForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 8, right: 8, bottom: 8),
      child: Form(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text("Nome")),
          ),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text("Email")),
          ),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text("Senha")),
          ),
          TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(), label: Text("Confirmação")),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(onPressed: () {}, child: const Text("Limpar")),
              OutlinedButton(onPressed: () {}, child: const Text("Salvar")),
            ],
          )
        ],
      )),
    );
  }
}
