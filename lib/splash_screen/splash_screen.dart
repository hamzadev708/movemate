import 'dart:async';
import 'package:flutter/material.dart';
import 'package:move_mate/authentication/car_info_screen.dart';
import 'package:move_mate/authentication/login_screen.dart';
import 'package:move_mate/authentication/signup_screen.dart';
import 'package:move_mate/mainscreen/main_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
{
  startTimer()
  {
     Timer(const Duration(seconds: 5), () async
    {
      // send user to main screen
      Navigator.push(context, MaterialPageRoute(builder: (c)=>LoginSrcreen()));

    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset("images/logo1.png"),
      
             const SizedBox(height: 10,),
      
             const Text(
               " Move Mate ",
               style: TextStyle(
                 fontSize: 24,
                 color: Colors.white,
                 fontWeight: FontWeight.bold
               ),
             )
           ],
         )
        )
      ),
    );
  }
}


