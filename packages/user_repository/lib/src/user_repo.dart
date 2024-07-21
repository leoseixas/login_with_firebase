import 'package:firebase_auth/firebase_auth.dart';
import 'models/user.dart';

abstract class UserRepository {
  Stream<User?> get user;

  Future<MyUser> signUp(MyUser user, String password);

  Future<void> serUserData(MyUser user);

  Future<void> signIn(String email, String password);

  Future<void> signOut();
}
