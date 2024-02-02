import 'package:application/User/repository/firebase_auth_api.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<UserCredential?> signInFirebase() => _firebaseAuthAPI.signIn();
  Future<User?> currentUser() => _firebaseAuthAPI.currentUser();
  signOut() => _firebaseAuthAPI.signOut();

}