import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  createState(){
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)), //Better Approach to the Spacing Problem
            submitButton(),
          ]
        )
      ),
    );
  }
  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'your_mail@example.com',
      )
    );
  }
  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Enter Password',
        hintText: 'Password',

    /// NOT THE BEST APPROACH FOR SPACING Prblm for submit button?? ///
    // return Container(
    //   margin: EdgeInsets.only(bottom: 25.0),
    //   child: TextFormField(
    //   obscureText: true,
    // autofocus: true,
    //   decoration: InputDecoration(
    //     labelText: 'Enter Password',
    //     hintText: 'Password',
      ),
    // ),
    );
  }
  Widget submitButton(){
    return RaisedButton(
      
      color: Colors.lightBlueAccent,
      elevation: 5.0,
      child: Text('Submit'),
      onPressed: () {},
    );
  }
}