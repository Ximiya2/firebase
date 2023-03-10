import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../servise/auth_servise.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void initState(){
    super.initState();
    _initTime();
  }
  void _initTime(){
    Timer(Duration(seconds: 3), () {
      _callNextPage();
    });
  }
  _callNextPage(){
    if(AuthService.isLoggedIn()){
      Navigator.pushReplacementNamed(context, '/HomePage');
    } else {
      Navigator.pushReplacementNamed(context, '/SignUp');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(193, 53, 132, 1),
              Color.fromRGBO(131, 58, 180, 1)
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
                  child: Text('Welcome', style: TextStyle(color: Colors.white, fontSize: 35),),
                )
            ),
            Text('from META', style: TextStyle(color: Colors.white, fontSize: 16) ,),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
