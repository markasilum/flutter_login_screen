import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  
  final String title;
  const Header({ Key? key, required this.title}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
          children: [              
             Icon(Icons.settings),
             SizedBox(width: 10,),
             Text(title,
            style: TextStyle(color: Colors.white), textAlign: TextAlign.left,),
          ],
        );
  }
}