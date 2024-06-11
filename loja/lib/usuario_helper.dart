import 'usuario_model.dart';

abstract class UsuarioHelper {
  Future<void> salvar(Usuario usuario);
  Future<Usuario> restaurar();
}
