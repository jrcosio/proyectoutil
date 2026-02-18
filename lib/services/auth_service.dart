import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

  /// Usuario actualmente autenticado en Firebase
  User? get currentUser => _auth.currentUser;

  /// Inicia sesión con Google usando la API v7.
  /// Devuelve el [UserCredential] si fue exitoso, o `null` si el usuario canceló.
  Future<UserCredential?> signInWithGoogle() async {
    // Lanzar el flujo de autenticación de Google (lanza GoogleSignInException si falla)
    final GoogleSignInAccount googleUser = await _googleSignIn.authenticate();

    // Obtener los tokens de autenticación (contiene idToken)
    final GoogleSignInAuthentication googleAuth = googleUser.authentication;

    // Crear las credenciales de Firebase con el ID token
    final OAuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
    );

    // Iniciar sesión en Firebase con las credenciales de Google
    return await _auth.signInWithCredential(credential);
  }

  /// Cierra la sesión actual de Firebase y Google.
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
