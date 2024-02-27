import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: 400,
        height: MediaQuery.of(context).size.height,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.white,),
              title: Text("Dashboard",style: TextStyle(color: Colors.white),),
              onTap: (){
                print("Dashboard cliked");
              },
            )
          ],
        ),
      );
  }
}