import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<UserCredential?> signIn() async {
    GoogleSignInAccount? googleSignInAccount;
    try {
      googleSignInAccount = await googleSignIn
          .signIn();
    } catch (error) {
      print("Error al mostrar la ventana de cuentas de Google: error: $error");
    }

    if (googleSignInAccount != null) {
      GoogleSignInAuthentication? googleAuthentication;
      try {
        googleAuthentication = await googleSignInAccount.authentication;
      } catch (error) {
        print(
            "Error al obtener las credenciales de la cuenta de Google: error: $error");
      }


      OAuthCredential? credential;
      // Create a new credential
      if (googleAuthentication != null) {
        credential = GoogleAuthProvider.credential(
            accessToken: googleAuthentication.accessToken,
            idToken: googleAuthentication.idToken);
      } else {
        print("Objeto credentials vacio");
      }
      if (credential != null) {
        try {
          UserCredential userCredential =
          await _auth.signInWithCredential(credential);
          return userCredential;
        } catch (e) {
          print("Error al autenticar con firebase: error: $e");
        }
      }
    } else {
      return null;
    }
  }

  //Metodo para obtener el usuario actualmente logueado
  Future<User?> currentUser() async {
    return _auth.currentUser;
  }

  signOut() async {
    await googleSignIn.signOut().then((value) => print("Sesion de Google cerrada"));
    await _auth.signOut().then((value) => print("Sesión de Firebase Cerrada"));
  }
}