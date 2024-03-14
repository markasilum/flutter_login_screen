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
          Meals ulam = Meals(i.toString(),jsonResponse['meals'][i]['strMeal'], jsonResponse['meals'][i]['strMealThumb'], jsonResponse['meals'][i]['strCategory'], jsonResponse['meals'][i]['strInstructions']);
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
           DrawerWidget(),
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
                mainAxisSpacing: 10,
               childAspectRatio: .6
              ),
              itemCount: meals.length,
              itemBuilder: (BuildContext context, int index) {
                return CardWidget(meal: meals[index]);
              },
            ),
          ),
            
            
            
          ], 
          ),
      ),
    );;
  }
}