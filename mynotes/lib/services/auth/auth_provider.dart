import 'package:mynotes/services/auth/auth_user.dart';

abstract class AuthProvider {
  AuthUser? get currentUser;
  Future<AuthUser> logIn({
    required String email,
    required String pass,
  });

  Future<AuthUser> createUser({
    required String email,
    required String pass,
  });

  Future<void> logOut();
  Future<void> sendEmailVerification();
}
