import 'package:flutter/material.dart';
import 'package:kaburajadulu/screens/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              Image.asset("assets/images/Onboarding.png", fit: BoxFit.cover),
              SizedBox(height: 30),
              Text(
                "#KaburAjaDulu",
                style: TextStyle(
                  color: Color(0xff038ED3),
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Discover your Exciting Adventure Around \nthe World with Trip",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff038ED3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15)
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    }, 
                    child: Text("Get started", style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700
                      ),)
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
