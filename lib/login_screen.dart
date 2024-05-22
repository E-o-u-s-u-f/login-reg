import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:login_reg/reg_screen.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFF000080),
                Color(0xFF87CEEB),
              ])
            ),
            child: const Padding(
                padding: EdgeInsets.only(top: 60.0,left: 22),
              child: Text('Hello\nLog in!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),topRight: Radius.circular(40)
                  ),
                  color: Colors.white,
                 ),
                  height: double.infinity,
                  width: double.infinity,
                child: Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30.0,),
                      const TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.check,color: Colors.grey,),
                          label: Text('Gmail',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:Color(0xFF000080),
                          ),)
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility_off,color: Colors.grey,),
                            label: Text('Password',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Color(0xFF000080),
                            ),)
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text('Forgot Password?',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color(0xff281537),
                        ),),
                      ),
                      const SizedBox(height: 70.0,),
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          height: 55,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            gradient: const LinearGradient(
                                colors:[
                                Color(0xFF000080),
                                Color(0xFF87CEEB),
                            ]
                            ),
                          ),
                          child: const Center(child: Text('Log in',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),),
                        ),
                      ),
                      const SizedBox(height: 200,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const regScreen()));
                        },
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Don't have account",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),),
                              Text("Sign up",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black,
                              ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ),
        ]
      ),
    );
  }
}
