// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, unused_local_variable, unnecessary_const, library_private_types_in_public_api, prefer_const_declarations, prefer_final_fields

import 'package:astana_city/widgets/city_widget/city_widget.dart';
import 'package:astana_city/widgets/nature_widget/nature_widget.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    
    CityWidget(),
    NatureWidget(),
    Text('History'),


  ];

  void onSelected(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOMAD'),
      ),
      body: Center (
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'City',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forest),
            label: 'Nature',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
          label: 'History',
          ),
        ],
        onTap: onSelected,
      ),
    );
  }
}
