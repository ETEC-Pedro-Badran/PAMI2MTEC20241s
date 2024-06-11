import 'package:flutter/material.dart';
import 'package:loja/usuario_helper.dart';
import 'package:loja/usuario_model.dart';

class UsuarioForm extends StatelessWidget {
  final UsuarioHelper helper;
  const UsuarioForm({super.key, required this.helper});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    //String? senha;
    Usuario usuario = Usuario();
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 8, right: 8, bottom: 8),
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Nome")),
                validator: (value) => (value?.isEmpty ?? true)
                    ? 'Nome precisa ser preenchido!'
                    : null,
                onSaved: (newValue) => usuario.nome = newValue,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Email")),
                validator: (value) => (!(value?.contains("@") ?? false)) ||
                        (value?.length ?? 0) < 3
                    ? "E-mail inválido"
                    : null,
                onSaved: (newValue) => usuario.email = newValue,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Senha"),
                ),
                onChanged: (value) => usuario.senha = value,
                validator: (value) => (value?.length ?? 0) > 3
                    ? null
                    : 'Senha deve ter no mínimo 3 caracteres!',
                onSaved: (value) => usuario.senha = value!,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Confirmação")),
                validator: (value) =>
                    usuario.isValid(value!) ? null : "Senha não confere!",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        print("Limpar foi apertado");
                        _formKey.currentState!.reset();
                      },
                      child: const Text("Limpar")),
                  OutlinedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          print("Dados válidos");
                          await helper.salvar(usuario);
                        } else {
                          print("Dados inválidos");
                        }
                      },
                      child: const Text("Salvar")),
                ],
              )
            ],
          )),
    );
  }
}
