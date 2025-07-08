import 'package:flutter/material.dart';
import 'package:flutter_project/ViewModel/home_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    final home_pro = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: home_pro.nameController,
                decoration: InputDecoration(
                  hintText: 'Name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
              
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: home_pro.proceController,
                decoration: InputDecoration(
                  hintText: 'Price',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
              
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: home_pro.desController,
                decoration: InputDecoration(
                  hintText: 'Description',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
              
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),
            ),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateScreen()),
              );
            },
            child: Text('CREATE DATA', style: TextStyle(color: Colors.black),),
          ),

          ],
        ),
      ),
    );
  }
}
