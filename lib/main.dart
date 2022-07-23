import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test1/WelcomeScreen.dart';
import 'package:test1/sLogin.dart';
import 'package:test1/RegistrationScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        sLogin.id: (context) => sLogin(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
