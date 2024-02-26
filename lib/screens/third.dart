import 'package:flutter/material.dart';
import 'package:flutter_login_screen/widgets/header.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Header(title:"Third"),
      ),
      body: Container(),
    );
  }
}