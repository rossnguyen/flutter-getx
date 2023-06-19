import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/home/tab/my_profile.dart';
import 'package:getx_demo/pages/home/tab/quotation_view.dart';
import 'package:getx_demo/pages/splash/splash_view.dart';

import 'tab/configurator_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ConfiguratorView(),
    QuotationView(),
    MyProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home view'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Configurator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Quotation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'My Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

