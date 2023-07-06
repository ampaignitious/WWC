
import 'package:flutter/material.dart';
import 'DefaultHomePage.dart';
import 'ReportScreen.dart';
import 'SettingsPage.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
    int _selectedIndex = 0;
  List Page = [

    DefaultHomePage(), 
    ReportScreen(),
    SettingsPage(), 
  

  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // drawer: AppDrawerScreen(),
      appBar: AppBar(
        leading: Text(''),
        backgroundColor: Colors.blue,
        title: Text("WWC", style: TextStyle(fontSize: 20),),
        elevation: 0,

      ),
      body: Page[_selectedIndex],
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
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30,), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.date_range_sharp,size: 30), label: 'Report'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,size: 30), label: 'Settings'),
        ],
      ),
    );
  }
}