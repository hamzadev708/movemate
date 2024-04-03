import 'package:flutter/material.dart';
import 'package:move_mate/authentication/signup_screen.dart';

class LoginSrcreen extends StatefulWidget
{


  @override
  State<LoginSrcreen> createState() => _LoginSrcreenState();
}

class _LoginSrcreenState extends State<LoginSrcreen>
{
  TextEditingController  EmailTextEditingController = TextEditingController();
  TextEditingController  PasswordTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo1.png"),
              ),
              const SizedBox(height: 10,),

              const Text(
                "Login as a Driver",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextField(
                controller: EmailTextEditingController,
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
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>SignUpScreen()));

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ),

              ),

              TextButton(
                child: const Text(
                  "Do not have an Account? SignUp Here ",
                  style: TextStyle(color: Colors.grey),
                ),
                onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (c)=> SignUpScreen()));
                  }
              )





            ],
          ),
        ),

      ),
    );
  }
}
