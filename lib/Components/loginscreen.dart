import "package:flutter/material.dart";
class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
 final formKey = GlobalKey<FormState>();
 String email = "";
 String password = "";
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.all(20.0),
      child: Form(
        key:formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            Container(margin: EdgeInsets.only(bottom:25.0)),
            passwordField(),
            Container(margin: EdgeInsets.only(bottom:25.0)),
            submitButton(),
          ],
          
        ),
      ),
    );
  }

  Widget emailField(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "myname@example.com",
       
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if(!value.contains("@")){
          return "Please enter a valid email";
        }
      },
      onSaved: (String value){
        email = value;
      },
    );
  } 

  Widget passwordField(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Password",
       
      ),
      obscureText: true,
      validator: (String value) {
        if(value.length<4){
          return "Password must be bigger than 4 characters.";
        }
      },
      onSaved: (String value){
        password = value;
      },
    );
  }

  Widget submitButton(){
    return RaisedButton(
      onPressed: (){
        if(formKey.currentState.validate()){
          formKey.currentState.save();
        }
      },
      child: Text(
        "Submit"
        ),
        color: Colors.amber,
      );
  }

}