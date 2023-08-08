import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jagger/screens/home.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 500), () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/logo.jpg"),
                    fit: BoxFit.fitHeight))),
        ));
  }

}
