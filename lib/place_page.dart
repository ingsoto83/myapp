import 'package:flutter/material.dart';

class PlacePage extends StatelessWidget {
  const PlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget imageSection = Image.asset('assets/img/place.jpg',width: size.width, height: size.height* 0.3,fit: BoxFit.cover);
    Widget imageSectionL = Image.asset('assets/img/place.jpg',width: size.width *.4, height: size.height,fit: BoxFit.cover);
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
    Widget btnSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildBtnColumn("CALL", Colors.blue, Icons.call),
        _buildBtnColumn("ROUTE", Colors.blue, Icons.near_me),
        _buildBtnColumn("SHARE", Colors.blue, Icons.share),
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean feugiat nisl id varius molestie. Nam scelerisque molestie viverra. Maecenas scelerisque odio id libero pretium placerat. Nulla nec convallis nisl. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum sit amet est eu diam feugiat lobortis vel vel arcu. Vivamus auctor aliquam lacus, sit amet accumsan elit ornare ut. Duis accumsan arcu erat, sed ornare nunc aliquet posuere. Phasellus sodales, metus vel faucibus vehicula, nisl felis auctor massa, ac interdum justo ipsum sed metus. Nullam vitae enim in sapien lobortis consectetur eu ac risus. Vestibulum placerat iaculis varius. Vestibulum placerat turpis felis, vitae malesuada eros hendrerit rhoncus. Proin nisl justo, congue efficitur risus eget, blandit bibendum ante. Cras id ullamcorper orci. Duis ullamcorper lorem augue."

          "Integer fermentum egestas ligula, id aliquam felis auctor sed. Integer et facilisis magna. Donec magna urna, cursus non massa sit amet, laoreet maximus eros. Morbi tristique congue aliquet. Quisque a justo diam. Fusce feugiat ultrices ultricies. Fusce et maximus leo. Praesent vulputate porttitor accumsan. Vestibulum sit amet ante at dolor malesuada dictum. Nunc maximus ut odio sed rutrum. Morbi faucibus metus et eros vestibulum dictum."

          "Integer elementum tellus a orci cursus, id lacinia risus sollicitudin. Suspendisse sit amet nulla nibh. Curabitur feugiat mauris quis lectus varius porttitor. Morbi molestie ligula in faucibus gravida. Cras id metus suscipit, pretium eros egestas, laoreet lectus. Aliquam erat volutpat. Duis lobortis consectetur justo malesuada blandit. Curabitur vehicula purus vel ipsum aliquet, sed euismod neque gravida. Phasellus id laoreet libero. Nullam ornare rutrum orci, ullamcorper tempus augue euismod quis. Pellentesque ut molestie elit. Cras at magna ac dolor interdum mattis.", textAlign: TextAlign.justify,softWrap: true,),
    );
    
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation){
        return orientation == Orientation.portrait ?
        SingleChildScrollView(
          child: Column(
            children: [
              imageSection,
              titleSection,
              btnSection,
              textSection
            ],
          ),
        ):
        Row(
          children: [
            imageSectionL,
            Expanded(
              child: ListView(
                children: [
                  titleSection,
                  btnSection,
                  textSection
                ]
              ),
            )
          ],
        );
      })
    );
  }

  Widget _buildBtnColumn(String text, Color color, IconData icon ){
    return GestureDetector(
      onTap: (){
        print("Click en $text");
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: color,),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(text,
              style: TextStyle(
                  color: color,
                  fontSize: 12,
                  fontWeight: FontWeight.w400
              ),
            ),
          )
        ],
      ),
    );
  }
}
