import 'package:flutter/material.dart';
import 'package:flutter_login_screen/models.dart';
import 'package:flutter_login_screen/screens/login.dart';
import 'package:flutter_login_screen/widgets/card.dart';
import 'package:flutter_login_screen/widgets/drawer.dart';
import 'package:flutter_login_screen/widgets/header.dart';

import 'package:sidebarx/sidebarx.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
class HomeScreen extends StatefulWidget {
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Meals> meals = [];

  Future<void> loadData() async {
      // Await the http get response, then decode the json-formatted response.
      // var url = Uri.https('https://www.themealdb.com', '/api/json/v1/1/filter.php?c=Beef', {'q': '{http}'});
      var response = await http.get(Uri.parse("https://www.themealdb.com/api/json/v1/1/search.php?f=a"));

      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;

        List<Meals> fromJson = [];

        for (var i = 0; i < jsonResponse['meals'].length; i++) {
          Meals ulam = Meals(i.toString(),jsonResponse['meals'][i]['strMeal'], jsonResponse['meals'][i]['strMealThumb']);
          fromJson.add(ulam);
        }
        print(fromJson);
        
        setState(() {
          meals = fromJson;
        });
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
  }


  @override
  void initState() {
    super.initState();
    loadData();
  }



  @override
  Widget build(BuildContext context) {
        Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: false,
        title:  Header(title:"Asilum" ),
      ),
      
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
            
            // meals.map((one_meal){
            //     // print(one_meal.mealName);
            //     return CardWidget(meal: one_meal);
            //   }).toList(),

            // meals.map((mealItem){
            //   return CardWidget(meal: mealItem)
            // })
            Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of items per row
               childAspectRatio: 1.5 
              ),
              itemCount: meals.length,
              itemBuilder: (BuildContext context, int index) {
                return CardWidget(meal: meals[index]);
              },
            ),
          ),
            
            
            DrawerWidget(),
            Container(
                                width: 300,
                                height: 300,
                                margin: EdgeInsets.only(top: screenSize.height*.2, left: screenSize.width*.3),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: NetworkImage('https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                    fit: BoxFit.cover
                                    
                                    ),
                                    shape: BoxShape.circle,
                                  color: Colors.green,),
                                  
                              ),
          
            ], 

          ),
      ),
    );
  }
}
}