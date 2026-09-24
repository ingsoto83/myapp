import 'package:flutter/material.dart';

class ComponentsPage extends StatelessWidget {
  ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes de Flutter"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        child: Column(
          children: [
            Text("Lista"),
            Text("de Componentes"),
            Text("Principales de Flutter"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.orangeAccent, size: 30),
                Icon(Icons.star, color: Colors.orangeAccent, size: 30),
                Icon(Icons.star, color: Colors.orangeAccent, size: 30),
                Icon(Icons.star, color: Colors.orangeAccent, size: 30),
                Icon(Icons.star_half, color: Colors.orangeAccent, size: 30),
              ],
            ),
            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black26,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("Add"), style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.black),),
                ElevatedButton(onPressed: (){}, child: Text("Remove"), style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.black),),
                ElevatedButton(onPressed: (){}, child: Text("Share"), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.black),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
