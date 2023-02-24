import 'package:firebase_core/firebase_core.dart';
import 'package:firebaze/pages/home_page.dart';
import 'package:firebaze/pages/loginPage.dart';
import 'package:firebaze/pages/sign_up.dart';
import 'package:firebaze/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      routes: {
        '/SignUp' : (context) => const SignUpPage(),
        '/SignIn' : (context) => const LoginPage(),
        '/HomePage' : (context) => const HomePage(),
      },
    );
  }
}
