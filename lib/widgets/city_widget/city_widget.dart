// ignore_for_file: prefer_const_declarations, prefer_const_constructors, avoid_unnecessary_containers, unused_import, prefer_const_literals_to_create_immutables, avoid_print

import 'package:astana_city/Theme/app_images.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


  class City {
    final String imageName;
    final String title;
    final String description;

  City({
      required this.imageName,
      required this.title,
      required this.description});
}

class CityWidget extends StatelessWidget {

  final _city = [
    City(
        imageName: AppImages.expo,
        title: 'Expo 2017',
        description: 'Sphere building'),
    City(
        imageName: AppImages.han,
        title: 'Khan shatyr',
        description: 'Built in a neofuturist style'),    
    City(
        imageName: AppImages.mech,
        title: 'Mosque',
        description: 'Capacity 30 000 people'),  
    City(
        imageName: AppImages.adp,
        title: 'Abu Dhabi Plaza',
        description: 'Height 311 meters'), 
  ];

  CityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _city.length,
        itemBuilder: (BuildContext context, int index) {
          final city = _city[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      )
                    ]),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    print("123");
                  },
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(city.title),
                    SizedBox(
                      height: 10,
                    ),
                    Image(image: AssetImage(city.imageName),),
                    SizedBox(
                      height: 10,
                    ),
                    Text(city.description),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                ),
              ),
            ),
          );
        });
  }
}
