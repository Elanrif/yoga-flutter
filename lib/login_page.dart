import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DelayedAnimation(
              delay: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DelayedAnimation(
                      delay: 1000,
                      child: Text(
                        "Connect email address",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          color: d_red,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    DelayedAnimation(
                      delay: 1500,
                      child: Text(
                        "It's recommended to connect your email address for us to better protect your information.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(color: d_grey, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            LoginForm(),
            SizedBox(height: 10),
            DelayedAnimation(
              delay: 4500,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: d_red,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.all(13),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CONFIRM',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 2500,
            child: TextField(
              decoration: InputDecoration(
                labelStyle: TextStyle(color: d_grey),
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20),
          DelayedAnimation(
            delay: 3500,
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: d_grey),
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.visibility_off, color: Colors.black),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  }, // Add functionality to toggle visibility
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
