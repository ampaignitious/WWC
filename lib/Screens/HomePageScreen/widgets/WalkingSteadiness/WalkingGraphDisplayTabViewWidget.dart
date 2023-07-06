import 'package:flutter/material.dart';

class WalkingGraphDisplayTabViewWidget extends StatefulWidget {
  const WalkingGraphDisplayTabViewWidget({super.key});

  @override
  State<WalkingGraphDisplayTabViewWidget> createState() => _WalkingGraphDisplayTabViewWidgetState();
}

class _WalkingGraphDisplayTabViewWidgetState extends State<WalkingGraphDisplayTabViewWidget> with TickerProviderStateMixin{
  @override
 Widget build(BuildContext context) {
      TabController _tab2Controller = TabController(length: 2, vsync: this);
      final size =MediaQuery.of(context).size;
    return  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        children: [
                 SizedBox(
                  height: size.height*0.009,
                ),
              Container(
                color: Color.fromARGB(255, 105, 205, 255),
                  child: TabBar(
                    controller: _tab2Controller,
                    labelColor: Colors.black54,
                    unselectedLabelColor: Colors.black26,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(text: "Day"),
                      Tab(text: "Week"),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, bottom: 25, right: 20, top: 10),
                  height: size.height*0.32,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(171, 214, 211, 211),
                      ),
                  child: TabBarView(
                    controller: _tab2Controller,
                    children: [
                      Center(child: Text("This will display walking patterns for the day graph")),
                       Center(child: Text("This will display walking patterns for the display week graph")),
                    ],
                  ),
                ),
                
          
        ],
         ),
      );
  }
}