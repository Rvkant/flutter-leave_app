// import 'package:assign_app/pages/home_page.dart';
import 'package:assign_app/pages/homepage1.dart';
//import 'package:assign_app/widget/drawer.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
    ),
    textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.blue)),
  ),

      debugShowCheckedModeBanner: false,
    
      
      routes: {
"/": (context) => HomePage1(),


      },
      
    );
  }
}