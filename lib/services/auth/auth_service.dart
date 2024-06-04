import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  final FirebaseAuth _firebaseauth = FirebaseAuth.instance;

  User? getCurrentUser(){
    return _firebaseauth.currentUser;
  }

  Future <UserCredential> signInWithEmailandPassword(String email , password) async {
    try {
      UserCredential userCredential = await _firebaseauth.signInWithEmailAndPassword(email: email, password: password);

      return userCredential;
    }
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  Future <UserCredential> signupWithEmailandPassword(String email , password) async {
    try {
      UserCredential userCredential = await _firebaseauth.createUserWithEmailAndPassword(email: email, password: password);

      return userCredential;
    }
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  Future<void> SignOut() async{
    return await _firebaseauth.signOut();
  }

}