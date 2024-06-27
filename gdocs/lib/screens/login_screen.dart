import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gdocs/colors.dart';
import 'package:gdocs/repository/auth_repository.dart';


class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

   void SignInWithGoogle(WidgetRef ref){
    ref.read(authRepositoryProvider).signInWithGoogle();  }

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(onPressed: (){SignInWithGoogle(ref); }, 
                                  icon: Image.asset('assets/images/g-logo-2.png',height: 20,),
                                  label: const Text("Sign in with Google",style: TextStyle(color: kBlackColor),),
                                  style: ElevatedButton.styleFrom(minimumSize: const Size(150, 50),
                                  backgroundColor: kWhiteColor),),
      ),
    );
  }
}