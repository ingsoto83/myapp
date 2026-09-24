import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            count++;
            setState(() {

            });
            print("el valor de count es $count");
          },
          backgroundColor: Colors.pinkAccent,
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
        ),
        body: Center(
            child: Text(
                "Has presionado $count veces el botón...!",
               style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            )
        )
    );
  }
}
