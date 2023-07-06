import 'package:flutter/material.dart';
import 'package:wwcapp/Screens/HomePageScreen/widgets/HeartRatePage/HeartRate.dart';
import 'package:wwcapp/Screens/HomePageScreen/widgets/HeartRatePage/HeartRateDisplayScreen.dart';
import 'package:wwcapp/Screens/HomePageScreen/widgets/SleepingPattern.dart';
import 'package:wwcapp/Screens/HomePageScreen/widgets/SleepingPatternPage/SleepingDisplayScreen.dart';
import 'package:wwcapp/Screens/HomePageScreen/widgets/TemperaturePage/Temperature.dart';
import 'package:wwcapp/Screens/HomePageScreen/widgets/TemperaturePage/TemperatureDisplayScreen.dart';
import 'package:wwcapp/Screens/HomePageScreen/widgets/WalkingSteadiness.dart';
import 'package:wwcapp/Screens/HomePageScreen/widgets/WalkingSteadiness/WalkingDisplayScreen.dart';

import 'BluetoothPage.dart';

class DefaultHomePage extends StatefulWidget {
  const DefaultHomePage({super.key});

  @override
  State<DefaultHomePage> createState() => _DefaultHomePageState();
}

class _DefaultHomePageState extends State<DefaultHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Column(
          children: [
            SizedBox(height: size.height*0.006,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Center(
                  child: Container(
                    margin: EdgeInsets.only(left: size.width*0.37),
                    height: size.height*0.2,
                    width: size.width*0.24,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/logoWWC.png"),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return BluetoothPage();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: size.width*0.04),
                    height: 60,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),],
                    ),
                    child: Icon(Icons.bluetooth,size: size.height*0.04, color: Colors.white,)),
                )
             ],
           ),
            // the menu button display
            // heart rate
            SizedBox(height: size.height*0.0005,),
            Text("application menu", style:TextStyle(color: Colors.blue.withOpacity(0.3), fontSize: size.height*0.032)),
            SizedBox(height: size.height*0.018,),
            Container(
              height: size.height*0.53,
              width: size.width*0.94,
              decoration: BoxDecoration(
                color: Colors.white,
                 boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: size.height*0.03,),
                                InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HeartRateDisplayScreen();
                  }));
                },
                child: HeartRate()),
                          SizedBox(height: size.height*0.06,),
                          InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return  TemperatureDisplayScreen();
                  }));
                },
                child: Temperature()),
                          SizedBox(height: size.height*0.06,),
                          InkWell(
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                    return  SleepingDisplayScreen();
                  }));
                },
                child: SleepingPattern()),
                          SizedBox(height: size.height*0.06,),
                          InkWell(
                onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                    return  WalkingDisplayScreen();
                  }));
                  
                },
                child: WalkingSteadiness())
                  ],
                ),
              ),
            ),

          ],
        )
        
      ],
    );
  }
}