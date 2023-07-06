import 'package:flutter/material.dart';
class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
             return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          leading: Icon(Icons.thermostat),
          title: Text('Temperature:'),
          subtitle: Text('Value: '),
          trailing: Text("Comment", style: TextStyle(color: Colors.blue),)
        ),
      );
    },
  );
  }
}