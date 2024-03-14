import 'package:flutter/material.dart';
import 'package:flutter_login_screen/screens/home.dart';
import 'package:flutter_login_screen/widgets/header.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.purple,
        title: Header(title:"SIGN UP"),
      ),
      body: Center(
        child: Container(
          // decoration: BoxDecoration(color: Colors.purple[50]),
          padding: EdgeInsets.all(100),
          child: Container(
                  height: MediaQuery.of(context).size.height*.85,
                  width: MediaQuery.of(context).size.width*.3,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 45),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [

                    Text("Enter your first name",),
                    SizedBox(height: 10,),

                    TextField(
                      decoration: InputDecoration(
                        
                        border: OutlineInputBorder(),
                        hintText: "First name",
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                     SizedBox(height: 10,),

                     Text("Enter your last name",),
                    SizedBox(height: 10,),

                    TextField(
                      decoration: InputDecoration(
                        
                        border: OutlineInputBorder(),
                        hintText: "Last name",
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                     SizedBox(height: 10,),
                

                    Text("Enter your email address",),
                    SizedBox(height: 10,),

                    TextField(
                      decoration: InputDecoration(
                        
                        border: OutlineInputBorder(),
                        hintText: "name@example.com",
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                    SizedBox(height: 10,),

                    Text("Enter your username",),
                    SizedBox(height: 10,),

                    TextField(
                      decoration: InputDecoration(
                        
                        border: OutlineInputBorder(),
                        hintText: "username",
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                    SizedBox(height: 30,),
                    
                    
                    
                    Text("Enter your password"),

                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "atleast 8 characters",
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),

                    SizedBox(height: 10,),
                    Text("Confirm password"),

                    SizedBox(height: 10,),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "enter password",
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),

                    SizedBox(height: 40,),

                    Center(
                      child: Column(
                        children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        decoration: BoxDecoration(border: Border.all(color: Colors.purple), borderRadius: BorderRadius.all(Radius.circular(10))),
                        child:
                        
                        TextButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  HomeScreen()),
                            );
                          }, 
                            child:Text("Sign Up", style: TextStyle(color: Colors.purple),))
                      
                      )
                      
                      ],),
                    ),
                    

                    
                  ]),
                ),
                
        )),
    );
  }
}