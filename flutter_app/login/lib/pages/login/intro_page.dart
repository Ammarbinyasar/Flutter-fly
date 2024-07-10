import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 300,
              child: SvgPicture.asset('assets/welcome.svg',
              ), // Add your image asset here
            ),
            SizedBox(height: 20),
            Text(
              'Hello!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome Back,\nGlad to have you back.....',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.yellow,
                minimumSize: Size(200, 50),
              ),
              child: Text('LOGIN'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Signup');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Color.fromARGB(255, 194, 194, 194),
                minimumSize: Size(200, 50),
              ),
              child: Text('SIGNUP'),
            ),
          ],
        ),
      ),
    );
  }
}
