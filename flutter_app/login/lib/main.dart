import 'package:flutter/material.dart';
import 'package:login/pages/home/Home_page.dart';
import 'package:login/pages/about_us/about_page.dart';
import 'package:login/pages/login/UserListScreen.dart';
import 'package:login/pages/login/intro_page.dart';
import 'package:login/pages/login/login_page.dart';
import 'package:login/pages/login/signup_page.dart';

main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 49, 160, 15),
      ),
      home: UserListScreen(),
      routes: {
        '/homepage':(context)=>  HomePage(),
        '/about':(context)=>  AboutPage(),
        '/Login':(context)=>  LoginScreen(),
        '/Welcome':(context)=>  WelcomeScreen(),
        '/Signup':(context)=>  SignUpScreen(),
        '/UserList': (context) => UserListScreen(),
      },
    );
  }
}