import 'package:flutter/material.dart';
import 'package:flutter_project/Create_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: const Text('Home Screen'), centerTitle: true),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateScreen()),
              );
            },
            child: Text('CREATE'),
          ),

          Center(child: ElevatedButton(onPressed: () {}, child: Text('READ'))),

          ElevatedButton(onPressed: () {}, child: Text('UPDATE')),

          ElevatedButton(onPressed: () {}, child: Text('DELETE')),
        ],
      ),
    );
  }
}
