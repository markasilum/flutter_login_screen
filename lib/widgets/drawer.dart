import 'package:flutter/material.dart';
import 'package:flutter_login_screen/screens/home.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:flutter_login_screen/screens/fourth.dart';
import 'package:flutter_login_screen/screens/login.dart';
import 'package:flutter_login_screen/screens/third.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SidebarX(
            theme: SidebarXTheme(
              itemDecoration: BoxDecoration( borderRadius: BorderRadius.circular(10) ),
              selectedItemDecoration: BoxDecoration(color: Color.fromARGB(255, 230, 209, 233), borderRadius: BorderRadius.circular(10) ),
              decoration: BoxDecoration(color: Color.fromARGB(255, 239, 226, 241),
             )
            ),
            
            extendedTheme: const SidebarXTheme(
              width: 350,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Color.fromARGB(255, 239, 219, 242),
              ),
            ),
           controller: SidebarXController(selectedIndex: 0, extended: true),
             items:  [
                    SidebarXItem(icon: Icons.home, label: 'Home', onTap: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),
                          );
                    }),
                    SidebarXItem(icon: Icons.newspaper, label: 'News', onTap:() {
                     
                    },),
                    SidebarXItem(icon: Icons.info, label: 'About', onTap:() {
                     Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FourthScreen()),
                          );
                    },),
                    SidebarXItem(icon: Icons.person, label: 'My Account'),
                    SidebarXItem(icon: Icons.logout, label: 'Logout', onTap:() {
                     Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen()),
                          );
                    },),
                ],
             ),
      );
  }
}