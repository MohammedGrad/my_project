// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Hello again!
            Icon(Icons.eco,
            size: 100,
              color: Colors.green[700],
            ),

            SizedBox(height: 30),

            Text(
              'Hello Again !',
            style: GoogleFonts.changa(
              fontSize: 40,
              color: Colors.green[900],
              fontWeight: FontWeight.bold,
            ),
              ),

            SizedBox(height: 5),
            Text(
              'Wellcom back, you\'ve been missed !',
              style: TextStyle(
                fontSize: 17,
              ),
            ),

            SizedBox(height: 50),

            //email TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            //Password TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30,),

            //Sign in Login
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(color: Colors.green[900],
                borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                    child: Text(
                        'Sign In',
                      style: TextStyle(color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
              ),
            ),

            SizedBox(height: 40),

            //Not a member / Register Now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member ? ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' Register Now',
                  style: TextStyle(
                      color: Colors.green[900],
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    ),
    );
  }
}
