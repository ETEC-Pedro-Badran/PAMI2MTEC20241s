import 'package:shared_preferences/shared_preferences.dart';

import 'usuario_model.dart';

class LoginHelper {
  save(Usuario usuario) async {
    final db = await SharedPreferences.getInstance();
    db.setString('login', usuario.toJson());
  }

  Future<Usuario?> restore() async {
    final db = await SharedPreferences.getInstance();
    final data = db.getString('login');
    return data == null ? null : Usuario.fromJson(data);
  }
}
