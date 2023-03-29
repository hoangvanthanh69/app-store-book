import 'package:flutter/material.dart';
import 'auth_card.dart';

class Login extends StatelessWidget{
  static const routeName = '/auth';
  const Login({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/login.jpg',
                width: 200,
                height: 200,
              ),
              
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Book store Xin Chào',
                  style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 251, 185, 4),fontWeight: FontWeight.w800 ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: AuthCard(),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}