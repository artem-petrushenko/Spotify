import 'package:spotify_client/src/common/data/provider/session/local/session_storage.dart';
import 'package:spotify_client/src/common/data/repository/auth/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required final SessionStorage sessionStorage,
  }) : _sessionStorage = sessionStorage;

  final SessionStorage _sessionStorage;

  @override
  String? fetchAccessToken() => _sessionStorage.getAccessToken();
}
