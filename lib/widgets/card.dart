import 'package:flutter/material.dart';
import 'package:flutter_login_screen/models.dart';

class CardWidget extends StatelessWidget {
final Meals meal;
  const CardWidget({ Key? key, required this.meal }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
              margin: EdgeInsets.all(20),
              width: screenSize.width*.25 ,
              height: screenSize.height*.1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
  
                children: [
                  Container(
                    
                    height: screenSize.height*.25,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))                 
                      ),
                  ),
                  Expanded(
                    child: Container(
                      width: screenSize.width*.30 ,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)) 
                        ),
                      child: Text(meal.mealName, style: TextStyle(fontSize: 20),),
                    ),
                  )
                ],
              ),
            );
  }
}