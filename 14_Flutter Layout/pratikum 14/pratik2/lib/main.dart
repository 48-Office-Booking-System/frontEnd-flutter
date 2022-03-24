import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          // membuat grid dengan 4 kolom
          crossAxisCount: 4, 
          padding: EdgeInsets.all(30.0),
          // mengatur spasi antar kolom
          crossAxisSpacing: 50,
          mainAxisSpacing: 50,
          children: [
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.pets,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.alarm,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.people,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.person,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),

            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.airplane_ticket,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.access_alarm,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.accessibility,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.accessible,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),

            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.phone,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.call,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.radio,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.door_back_door,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),

            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.people_alt,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.emoji_people,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.switch_camera,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.car_rental,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),

            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.bike_scooter,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.fire_extinguisher,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.home,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.build,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),

            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.catching_pokemon,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.donut_large,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.local_hospital,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.health_and_safety,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),

            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.brightness_medium,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.warning,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.warning_amber,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
            RawMaterialButton(onPressed: () {},elevation: 2.0,fillColor: Colors.blue,child: Icon(Icons.point_of_sale_outlined,size: 35.0,color: Colors.white),padding: EdgeInsets.all(5.0),shape: CircleBorder(),),
          ],
        ),
      ),
    );
  }
}