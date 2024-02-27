import 'package:flutter/material.dart';
import 'package:flutter_login_screen/screens/login.dart';
import 'package:flutter_login_screen/widgets/drawer.dart';
import 'package:flutter_login_screen/widgets/header.dart';
import 'package:sidebarx/sidebarx.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
        Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: false,
        title:  Header(title:"Asilum" ),
      ),
      // drawer: DrawerWidget(),
      body: Container(
        color: Colors.grey[100],
        width: screenSize.width,
        height: screenSize.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SidebarX(
            
            theme: SidebarXTheme(
              itemDecoration: BoxDecoration(color: Color.fromARGB(255, 237, 227, 239), borderRadius: BorderRadius.circular(10) ),
              selectedItemDecoration: BoxDecoration(color: Color.fromARGB(255, 230, 209, 233), borderRadius: BorderRadius.circular(10) ),
              decoration: BoxDecoration(color: Color.fromARGB(255, 239, 226, 241),
              boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 236, 236, 236),
                    blurRadius: 15.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 5  horizontally
                      5.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],)
            ),
            
            extendedTheme: const SidebarXTheme(
              width: 350,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Color.fromARGB(255, 239, 219, 242),
              boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 236, 236, 236),
                    blurRadius: 15.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 5  horizontally
                      5.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
            ),
           controller: SidebarXController(selectedIndex: 0, extended: true),
             items:  [
                    SidebarXItem(icon: Icons.home, label: 'Home'),
                    SidebarXItem(icon: Icons.newspaper, label: 'News'),
                    SidebarXItem(icon: Icons.info, label: 'About'),
                    SidebarXItem(icon: Icons.person, label: 'My Account'),
                    SidebarXItem(icon: Icons.logout, label: 'Logout', onTap:() {
                     Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen()),
                          );
                    },),
                ],
             ),
            
            Container(color: Colors.blue[300], margin: EdgeInsets.only(top: 20, left: 20),
            
            
            child: TextButton(
              onPressed: (){
                  //remove screen in between current screen to destination screen
                  Navigator.pushNamedAndRemoveUntil(context, '/third', ModalRoute.withName('/login'));
                }, 
              child: Text("Go to third screen",style: TextStyle(color: Colors.white)), )),
            
            Container(
              margin: EdgeInsets.all(20),
              width: screenSize.width*.15,
              height: screenSize.height*.37,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: screenSize.height*.25,
                      width: screenSize.width*.2,
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(20)

                      ),
                    ),
                    Container(
                      width: screenSize.width*.2,
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10  ),
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,

                        children: [
                        Container(
                          child: Text("Product Name"),
                        ),
                        Container(
                          child: Text("₱ 200", style: TextStyle(fontSize: 20),),
                        )
                      //   
                      //   Text()
                      ]),
                      // child: Text(
                      //   "4-103 IT Elective 5 (2024)",
                      //   style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      // margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(20,10,20,10),
                            decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(10)),
                            child: 
                            TextButton(
                              onPressed: () { },
                              child: Text("Cart", style: TextStyle(color: Colors.white),),)),
                            Container(
                            padding: EdgeInsets.fromLTRB(20,10,20,10),
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
                            child: 
                            TextButton(
                              onPressed: () { },
                              child: Text("Buy",style: TextStyle(color: Colors.white)),
                            ),),
                        ]),
                      // child: Text(
                      //   "Computer Studies",
                      //   style: TextStyle(fontWeight: FontWeight.normal),),
                    ),
                    

                ]),
              ),
            ),
            
          
            Container(
              margin: EdgeInsets.only(top: 20),
              height: screenSize.height*.11,
              width: screenSize.width*.15,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue[400],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomRight: Radius.circular(20))
              ),              
              child: Column(
                children: [
                  Container(
                    width: screenSize.width*.2,
                    color: Colors.blue[400],
                    child: Text(
                      "How are you?",
                      style: TextStyle(fontSize: 30, color: Colors.white),textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    width: screenSize.width*.2,
                    color: Colors.blue[400],
                    child: Text(
                      "Feb 6, 2024",
                      style: TextStyle(fontSize: 15, color: Colors.white),textAlign: TextAlign.right,
                    ),
                  ),
                  Container(
                    width: screenSize.width*.2,
                    color: Colors.blue[400],
                    child: Text(
                      "7:40AM",
                      style: TextStyle(fontSize: 13, color: Colors.white),textAlign: TextAlign.right,
                    ),
                  )
                ]),
            ),
          
            Container(
              margin: EdgeInsets.all(20),
              width: screenSize.width*.2,
              height: screenSize.height*.15,
              decoration: BoxDecoration(
                  color: Colors.white,
              ),
              child: Row(children: [
                Container(
                    height: screenSize.height*.2,
                    width: screenSize.width*.085,
                    decoration: BoxDecoration(color: Colors.blue[100]),

                ),
                Container(
                    padding: EdgeInsets.all(15),
                    height: screenSize.height*.2,
                    width: screenSize.width*.115,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      
                      children: [
                        Container(
                          height: screenSize.height*.07,
                          width: screenSize.width*.12,

                          decoration: BoxDecoration(color: Colors.white),
                          child: Text("Mark Emmanuel Asilum", style: TextStyle(fontSize: 27),),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                            height: screenSize.height*.055,
                             width: screenSize.width*.0515,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Column(
                              children: [
                                Text("Posts", style: TextStyle(fontSize: 18),),
                                Text("99", style: TextStyle(fontSize: 18),),
                              ],
                            ),
                          ),
                          Container(
                            height: screenSize.height*.055,
                             width: screenSize.width*.0515,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Column(
                              children: [
                                Text("Followers", style: TextStyle(fontSize: 18),),
                                 Text("8", style: TextStyle(fontSize: 18),),
                              ],
                            ),
                          ),

                          ],
                        )

                      ]),
                )
              ]),
            ),

            Container(
               margin: EdgeInsets.all(20),
              width: screenSize.width*.15,
              height: screenSize.height*.24,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white ,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(child: Row(
                    children: [
                    Container(
                      height: screenSize.height*.05,
                      width: screenSize.width*.023,
                      decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(100)),
                    ),
                    Container(
                      // decoration: BoxDecoration(color: Colors.amber),
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text("Mark Emmanuel Asilum", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    )
                  ],),),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                     height: screenSize.height*.1,
                      width: screenSize.width*.30,
                      decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("Title",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), 
                  ),
                  Container(
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                      height: screenSize.height*.025,
                      width: screenSize.width*.011,
                      decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(100)),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 5),
                      height: screenSize.height*.025,
                      width: screenSize.width*.011,
                      decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(100)),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 5),
                      height: screenSize.height*.025,
                      width: screenSize.width*.011,
                      decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(100)),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 5),
                      height: screenSize.height*.025,
                      width: screenSize.width*.011,
                      decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(100)),
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 5),
                      height: screenSize.height*.025,
                      width: screenSize.width*.011,
                      decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(100)),
                    ),
                    
                    
                    ]),
                  )
                ]),
            ),
          ], 
          ),
      ),
    );;
  }
}