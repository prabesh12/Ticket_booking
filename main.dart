import 'package:flutter/material.dart';
import 'package:project/screens/bottom_navigatior.dart';

void main() {
  runApp(const MyApp());
}

// enum AnimalType {
//   cat,
//   dog,
//   rabbit;
// }

// void test(AnimalType animalType) {
//   switch(animalType){
//           case AnimalType.cat: print("cat");
//           break;
//           case AnimalType.dog : print("dog");
//           break;
//           case AnimalType.rabbit : print("rabbit");
         
//   }
//   print("");
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // test(AnimalType.cat);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigator(),
    );
  }
}

