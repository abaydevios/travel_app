// ignore_for_file: prefer_const_declarations, prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, unused_local_variable, unused_import

import 'package:astana_city/Theme/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Nature {
  final String imageName;
  final String title;
  final String description;

  Nature({
  required this.imageName, 
  required this.title, 
  required this.description});
}

class NatureWidget extends StatelessWidget {
  final _nature = [
    Nature(
      imageName: AppImages.bao, 
      title: 'Big Almaty lake', 
      description: 'Lake in the mountains'),
    Nature(
      imageName: AppImages.char, 
      title: 'Charyn canyon', 
      description: 'Canyon depth 300 meters'),
    Nature(
      imageName: AppImages.kain, 
      title: 'Kaindy lake', 
      description: 'Spruce trees are in the lake'),
    Nature(
      imageName: AppImages.yaga, 
      title: 'Kempirtas', 
      description: 'Mysterious natural phenomenon'),
    Nature(
      imageName: AppImages.bor, 
      title: 'Borovoe lake', 
      description: 'Lake in the forest'),
    Nature(
      imageName: AppImages.bur, 
      title: 'Burhan-Bulak waterfall', 
      description: 'Height 168 meters'),
  ];

  NatureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _nature.length,
        itemBuilder: (BuildContext context, int index) {
          final nature = _nature[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
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
                  Text(nature.title),
                  SizedBox(
                    height: 10,
                  ),
                  Image(image: AssetImage(nature.imageName),),
                  SizedBox(
                    height: 10,
                  ),
                  Text(nature.description),
                  SizedBox(
                    height: 10,
                  )
                ]),
              ),
            ),
          );
        });
  }
}
