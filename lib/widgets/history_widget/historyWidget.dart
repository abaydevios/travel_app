// ignore_for_file: camel_case_types, implementation_imports, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(children: [
      _headerImage(),
      SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          _description(),
          Divider(),
          _otherInfo(),
          Divider(),
          Text(
            'Translations of poets',
            style: TextStyle(fontSize: 24),
          ),
          _translations(),
        ]),
      )),
    ]),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
        'https://vechastana.kz/wp-content/uploads/01-101.jpg'),
    fit: BoxFit.cover,
  );
}

Column _description() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Abai Qunanbaiuly',
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
      Divider(),
      Text(
          'Abai`s main contribution to Kazakh culture and folklore lies in his poetry, which expresses great nationalism and grew out of Kazakh folk culture. Before him, most Kazakh poetry was oral, echoing the nomadic habits of the people of the Kazakh steppes. During Abai`s lifetime, however, a number of important socio-political and socio-economic changes occurred. '),
    ],
  );
}

Row _otherInfo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.menu_book_outlined),
        ],
      ),
      SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Qara sózderi'),
            ],
          ),
          Row(
            children: [
              Text('The Book of Words', style: TextStyle(color: Colors.grey))
            ],
          ),
        ],
      ),
    ],
  );
}



Wrap _translations() {
  return Wrap(
    spacing: 10,
    children: List.generate(1, (int index) {
      return Chip(
          label: Text(
        'Mikhail Lermontov',
        style: TextStyle(fontSize: 15),
      ));
    }),
  );
}
