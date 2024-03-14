import 'package:flutter/material.dart';
import 'package:flutter_login_screen/widgets/drawer.dart';
import 'package:flutter_login_screen/widgets/header.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
      Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.purple,
        title: Header(title: "About")
      ),
      body: Container(
        color: Colors.grey[100],
        width: screenSize.width,
        height: screenSize.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerWidget(),  
            Column(
              children: [
                Container(

                                width: 300,
                                height: 300,
                                margin: EdgeInsets.only(top: screenSize.height*.3),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage('https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                    fit: BoxFit.cover
                                    
                                    ),
                                    shape: BoxShape.circle,
                                  color: Colors.green,),
                                  
                              ),
                              SizedBox(height: 10),
                              Center(child: Text('Flutter is complicated. '))    ,
              ],
            ),
           
            Text("")

            ], 
          ),
      ),
    );
  }
}