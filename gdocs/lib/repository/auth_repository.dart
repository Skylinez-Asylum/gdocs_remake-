import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider((ref) {
      return AuthRepository(googleSignIn: GoogleSignIn());
});


class AuthRepository{
  final GoogleSignIn _googleSignIn;

  AuthRepository({required GoogleSignIn googleSignIn}):_googleSignIn=googleSignIn;

  void signInWithGoogle() async {
    try{
      final user = await _googleSignIn.signIn();
      if(user!=null){
        print(user.displayName);
        print(user.email);
      }
    }
    catch(e){
      print(e);
    }

  }
}