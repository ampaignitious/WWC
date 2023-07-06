import 'package:flutter/material.dart';

import '../../HomeScreen.dart';
import '../../SettingsPage.dart';
import 'SleepingTabViewWidget.dart';
 

class SleepingDisplayScreen extends StatefulWidget {
  const SleepingDisplayScreen({super.key});

  @override
  State<SleepingDisplayScreen> createState() => _SleepingDisplayScreenState();
}

class _SleepingDisplayScreenState extends State<SleepingDisplayScreen> {
  @override
      int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.bed),
        title: const Text("Sleeping Pattern"),
      ),
      body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SleepingTabViewWidget()
          ],
        ),
      ),
         bottomNavigationBar: BottomNavigationBar(
        
        currentIndex: _selectedIndex,
        onTap: ((value) => onItemTapped(value)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 16, 98, 165),
        unselectedItemColor: Color.fromARGB(118, 182, 182, 182),
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HomeScreen();
              }));
            },
            child: Icon(Icons.home, size: 20,)), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.date_range_sharp,size: 30), label: 'Report'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,size: 20), label: 'Settings'),
        ],
      ),
    );
  }
}