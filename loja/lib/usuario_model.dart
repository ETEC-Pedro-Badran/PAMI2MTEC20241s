import 'dart:convert';

class Usuario {
  int? id;
  String? nome;
  String? email;
  String? _senha;

  set senha(String value) => _senha = value;

  bool isValid(String senha) {
    return senha == _senha;
  }

  Usuario({this.id, this.nome, this.email, senha}) : _senha = senha;

  String toJson() {
    final map = {"id": id, "nome": nome, "email": email, "senha": _senha};
    return jsonEncode(map);
  }

  factory Usuario.fromJson(String json) {
    final data = jsonDecode(json);
    return Usuario(
        id: data["id"],
        nome: data['nome'],
        email: data["email"],
        senha: data["senha"]);
  }
}
