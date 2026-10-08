import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/fondo.jpg"),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
          child: Container(
            height: 100,
            width:  double.infinity,
            color: Colors.black45,
            child: Text("Welcome Traveler", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'Signatra'),)
          ),
        )
      )
    );
  }
}
