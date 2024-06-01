import 'package:auth/social_page.dart';
import 'package:flutter/material.dart';
import 'package:auth/delay_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auth/main.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayAnimation(
                delay: 1500,
                child: Container(
                  height: 170,
                  child: Image.asset('images/yoga_logo.jpg'),
                ),
              ),
              DelayAnimation(
                delay: 2500,
                child: Container(
                  height: 400,
                  child: Image.asset('images/yoga1.jpg'),
                ),
              ),
              DelayAnimation(
                delay: 3500,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Text(
                    'Get fitter, Stronger, and embrase a high lifestyle',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              DelayAnimation(
                delay: 4500,
                child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: d_red,
                        padding: EdgeInsets.all(20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SocialPage(),
                          ),
                        );
                      },
                      child: Text(
                        'GET STARTED',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
