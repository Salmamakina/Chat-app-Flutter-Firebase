import 'package:chat_app/screens/login_home.dart';
import 'package:chat_app/screens/register-page.dart';
import 'package:flutter/material.dart';
class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {


  bool showLoginPage = true;
  void togglePages(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginHome(
        onTap: togglePages,
      );
    }
    else{
    return RegisterHome(
      onTap: togglePages,
    );
    }
  }
}