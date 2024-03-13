import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  final String mealImage;
  final String mealName;
  final String mealID;
    const CardWidget({
      required this.mealID,
      required this.mealName,
      required this.mealImage
    });


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
              margin: EdgeInsets.all(20),
              width: screenSize.width*.25 ,
              height: screenSize.height*.37,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
  
                children: [
                  Container(
                    width: screenSize.width*.25 ,
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Text(mealName),
                  )
                ],
              ),
            );
  }
}