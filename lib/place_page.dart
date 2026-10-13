import 'package:flutter/material.dart';

class PlacePage extends StatelessWidget {
  const PlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget imageSection = Image.asset('assets/img/place.jpg',width: size.width, height: size.height* 0.3,fit: BoxFit.cover);
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Playas de Arteaga',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Coahuila, México',
                  style: TextStyle(color: Colors.grey[500]))
              ],),
          ),
          Icon(Icons.star, color: Colors.red[500],),
          Text('41', style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      )
    );

    return Scaffold(
      body: Column(
        children: [
          imageSection,
          titleSection
        ],
      ),
    );
  }
}
