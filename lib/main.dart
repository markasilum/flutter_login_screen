import 'package:flutter/material.dart';
import 'package:flutter_login_screen/screens/home.dart';
import 'package:flutter_login_screen/screens/login.dart';
import 'package:flutter_login_screen/screens/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: HomeScreen(),
      routes: {
        '/home':(context)=> HomeScreen(),
        '/login':(context) => LoginScreen(),
        '/third':(context) => ThirdScreen(),

        
      },
    );
  }
}

