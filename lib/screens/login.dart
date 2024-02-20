import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 150, vertical: 100),
        color: Colors.green[100],
        child:Card(
          child: Container(

            child: Row(
              
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*.85,
                  width: MediaQuery.of(context).size.width*.3,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 45),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                    Row(children: [
                      Icon(Icons.dashboard,size: 50),
                      Text("Discovery Gift", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      
                    ],),
                    SizedBox(height: 50,),
                    Text("Asilum.", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),),
                    SizedBox(height: 30,),

                    Container(
                      width: 250,
                      child:                     Text("Log in with your data that you entered during your registration", style: TextStyle(color: Colors.grey),) ,),
                    SizedBox(height: 30,),

                    Text("Enter your email address",),
                                        SizedBox(height: 10,),

                    TextField(
                      
                      decoration: InputDecoration(
                        
                        border: OutlineInputBorder(),
                        hintText: "name@example.com",
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Enter you password"),

                                                            SizedBox(height: 10,),

                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "atleast 8 characters",
                        hintStyle: TextStyle(color: Colors.grey)
                      ),
                    ),

                    SizedBox(height: 40,),

                    Column(
                      children: [
                      Container(
                      decoration: BoxDecoration(color: Colors.purple, borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: 400,
                      height: 40,
                      child: TextButton(onPressed: (){}, 
                        child: Text("Login", style: TextStyle(color: Colors.white,), )),
                    ),
                    SizedBox(height: 30,),
                    Text("Use password for loggin into  my account", style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 30,),
                    Text("Forget password?", style: TextStyle(color: Colors.purple),),
                    SizedBox(height: 30,),
                    Divider(),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      decoration: BoxDecoration(border: Border.all(color: Colors.purple), borderRadius: BorderRadius.all(Radius.circular(10))),
                      child:
                      
                      TextButton(onPressed: (){}, 
                      child:Text("Sign Up Now", style: TextStyle(color: Colors.purple),))

                    )
                    
                    ],),
                    

                    
                  ]),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*.85,
                  width: MediaQuery.of(context).size.width*.5163,
                  decoration: BoxDecoration(color: Colors.purple[50], borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))),
                  child: Stack(children: [
                    Positioned(
                      left: 200,
                      top: 200,
                      child: Text("Welcome back", style: TextStyle(fontSize: 70, fontWeight: FontWeight.w600, color: Colors.purple[800]),)),
                      Positioned(
                      left: 260,
                      top: 130,
                      child: Text("Nice to see you again", style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal, color: Colors.grey[800]),))
                  ]),
               
                ),
              ],
            ),
            
          ),) ),


    );
  }
}