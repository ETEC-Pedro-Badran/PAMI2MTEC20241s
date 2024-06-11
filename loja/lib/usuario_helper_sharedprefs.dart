import 'package:loja/usuario_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'usuario_helper.dart';

class UsuarioHelperSharedPrefs extends UsuarioHelper {
  @override
  Future<Usuario> restaurar() async {
    final db = await SharedPreferences.getInstance();
    final json = db.getString("usuario");
    if (json != null) {
      return Usuario.fromJson(json);
    } else {
      return Usuario();
    }
  }

  @override
  Future<void> salvar(Usuario usuario) async {
    final db = await SharedPreferences.getInstance();
    db.setString("usuario", usuario.toJson());
  }
}
