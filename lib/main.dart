import 'package:flutter/material.dart';
import 'package:practicas/Pages/forgotPass.dart';
import 'package:practicas/Pages/homepage.dart';
import 'package:practicas/Pages/login.dart';
import 'package:practicas/Pages/progressView.dart';
import 'package:practicas/Pages/register.dart';
import 'package:practicas/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: SplashView(),
      initialRoute: 'splash',
      routes: {
        'splash': (context) => const SplashView(),
        'progress': (context) => const ProgressView(),
        'home': (context) => const HomePage(),
        'login': (context) => const Login(),
        'register' : (context) => Register(),
        'forgotPass' :(context) => const ForgotPassword()
      },
    );
  }
}
