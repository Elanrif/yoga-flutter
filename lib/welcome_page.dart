import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga/delayed_animation.dart';
import 'package:yoga/main.dart';
import 'package:yoga/social_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  height: 170,
                  child: Image.asset('images/yoga_1.png'),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  height: 300,
                  child: Image.asset('images/yoga_2.png'),
                ),
              ),
              DelayedAnimation(
                delay: 3500,
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 30, bottom: 20),
                  child: Text(
                    "Get fitter, stronger, and embrasse a helthier lifestyle",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(color: d_grey, fontSize: 16),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 4500,
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: d_red,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(13),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SocialPage()),
                      );
                    },
                    child: Text(
                      'GET STARTED',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
