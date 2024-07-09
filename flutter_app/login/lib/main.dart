import 'package:flutter/material.dart';
import 'package:login/pages/home/Home_page.dart';
import 'package:login/pages/about_us/about_page.dart';

main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 49, 160, 15),
      ),
      home: HomePage(),
      routes: {
        '/homepage':(context)=>  HomePage(),
        '/about':(context)=>  AboutPage(),
      },
    );
  }
}