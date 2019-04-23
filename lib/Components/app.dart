import "package:flutter/material.dart";
import "./loginscreen.dart";

class App extends  StatelessWidget{
 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: LoginScreen(),
      ),
    );
  }
}