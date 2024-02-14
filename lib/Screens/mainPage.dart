import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Reusable/reusable.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {

  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0DE4C7),
              Color(0xFF5712A7),
            ],
          )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 90, 20, 0),
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                  height: 130,
                ),
                reusableHeading("Sign Up"),
                const SizedBox(height: 50,),
                reusableTextField("Enter User Name", Icons.person_outlined, false, _userNameTextController),
                const SizedBox(height: 20,),
                reusableTextField("Enter Email", Icons.email_outlined, false, _emailTextController),
                const SizedBox(height: 20,),
                reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
                const SizedBox(height: 20,),
                reusableButton(context, "Sign Up", (){
                })
              ],
            ),
          ),
        ),
      )
    );
  }
}
