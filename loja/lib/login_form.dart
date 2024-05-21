import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String? senha;
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 8, right: 8, bottom: 8),
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Email")),
                validator: (value) => (!(value?.contains("@") ?? false)) ||
                        (value?.length ?? 0) < 3
                    ? "E-mail inválido"
                    : null,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Senha"),
                ),
                onChanged: (value) => senha = value,
                validator: (value) => (value?.length ?? 0) > 3
                    ? null
                    : 'Senha deve ter no mínimo 3 caracteres!',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        print("Limpar foi apertado");
                        _formKey.currentState!.reset();
                      },
                      child: const Text("Registrar-se")),
                  OutlinedButton(
                      onPressed: () {
                        print("Limpar foi apertado");
                        _formKey.currentState!.reset();
                      },
                      child: const Text("Limpar")),
                  OutlinedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("Dados válidos");
                        } else {
                          print("Dados inválidos");
                        }
                      },
                      child: const Text("Entrar")),
                ],
              )
            ],
          )),
    );
  }
}
