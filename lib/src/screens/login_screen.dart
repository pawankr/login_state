import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  createState(){
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{
  final formKey = GlobalKey<FormState>();

  String email;
  String password;

  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
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
      ),
      validator: (String value) {
        //return null if valid
        //otherwise string (with the error msg) if invalid
        if (!value.contains('@')) {
          return 'Please enter a valid email';
        }
      },
      onSaved: (String value) {
      email = value;
      },
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
    validator: (String value) {
      if (value.length < 4) {
        return 'Password must be atleast 4 characters';
      }
    },
    onSaved: (String value) {
      password = value;
      },
    );
  }
  Widget submitButton(){
    return RaisedButton(
      
      color: Colors.lightBlueAccent,
      elevation: 5.0,
      child: Text('Submit'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('Email: $email and Password: $password' );

        }
      },
    );
  }
}