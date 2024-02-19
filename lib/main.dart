

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Center(child: const Text('GridView Text',)),
        backgroundColor: Colors.red,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          myBox('One'),
          myBox('Two'),
          myBox('Three'),
          myBox('Four'),
          myBox('Five'),
          myBox('Six'),
          myBox('Seven'),
          myBox('Eight'),
          myBox('Nine'),
          myBox('Ten'),
          myBox('Eleven'),
          myBox('Twelve'),



         
         



        ],
      ),

    );
  }
}
Widget myBox(final String index){
  return Container(
    margin:const EdgeInsets.all(8),
    color: Colors.green,
    alignment: Alignment.center,
    child: Text('$index'),
  );
}


