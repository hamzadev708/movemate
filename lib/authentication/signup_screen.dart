

import 'package:flutter/material.dart';
import 'package:move_mate/authentication/car_info_screen.dart';
import 'package:move_mate/authentication/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpScreen extends StatefulWidget
{
  TextEditingController  nameTextEditingController = TextEditingController();
  TextEditingController  emailTextEditingController = TextEditingController();
  TextEditingController  phoneTextEditingController = TextEditingController();
  TextEditingController  passwordTextEditingController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  SignUpScreen({super.key});


  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  void signup(){

  }
  var nameTextEditingController;

  var EmaiTextEditingController;

  var PasswordTextEditingController;

  var PhoneTextEditingController;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo1.png"),
              ),

              const SizedBox(height: 10,),

              const Text(
                "Register as a Driver",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextField(
                controller: nameTextEditingController,
                onTap: (){
                  signup();
                },
                style: const TextStyle(
                  color: Colors.grey
                ),

                decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "Name",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle:  TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                  ),
                ),

              ),

              TextField(
                controller: EmaiTextEditingController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                    color: Colors.grey
                ),

                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Email",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle:  TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                  ),
                ),

              ),

              TextField(
                controller: PhoneTextEditingController,
                keyboardType: TextInputType.phone,
                style: const TextStyle(
                    color: Colors.grey
                ),

                decoration: const InputDecoration(
                  labelText: "Phone",
                  hintText: "Phone",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle:  TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                  ),
                ),

              ),

              TextField(
                controller: PasswordTextEditingController,
                keyboardType: TextInputType.text,
                obscureText: true,
                style: const TextStyle(
                    color: Colors.grey
                ),

                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),

                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle:  TextStyle(
                    color: Colors.grey,
                    fontSize: 14,

                  ),
                ),

              ),

              const SizedBox(height: 20,),

              ElevatedButton(
                onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (c)=> CarInfoScreen()));

        },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                ),
                child: Text(
            "Create Account",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
            ),
          ),

              ),

              TextButton(
                  child: const Text(
                    "Already have an Account? Login Here ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: ()
                  {
                    //Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginSrcreen()));
                  }
              )







            ],
          ),
        ),
      ),
    );
  }
}
