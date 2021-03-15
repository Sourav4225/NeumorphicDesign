import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neumorphism/LoginPage.dart';
import 'decorator.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(children: [
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      'Welcome aboard.',
                      style: TextStyle(
                          color: Colors.purpleAccent,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: getBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * .8,
                      borderRadius: 20,
                      primaryColor: Colors.white,
                      secondaryColor: Colors.grey[400]),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 65,
                      ),
                      Text(
                        'Full Name ',
                        style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      getBox(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 7),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Your Name ',
                              ),
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * .6,
                          borderRadius: 20,
                          primaryColor: Colors.white,
                          secondaryColor: Colors.grey[400]),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      getBox(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 7),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Your Email ',
                              ),
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * .6,
                          borderRadius: 20,
                          primaryColor: Colors.white,
                          secondaryColor: Colors.grey[400]),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(
                            color: Colors.purpleAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      getBox(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 7),
                            child: TextField(
                              obscureText: true,
                              obscuringCharacter: '*',
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Your Password ',
                              ),
                            ),
                          ),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * .6,
                          borderRadius: 20,
                          primaryColor: Colors.white,
                          secondaryColor: Colors.grey[400]),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Submit',
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          splashColor: Colors.purpleAccent,
                          textColor: Colors.purpleAccent,
                        ),
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * .6,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purpleAccent,
                            width: 2.5,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4, -4),
                              blurRadius: 5,
                              spreadRadius: 5,
                            ),
                            BoxShadow(
                              color: Colors.grey[400],
                              offset: Offset(4, 4),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginPage()));
                          },
                          child: Text(
                            'Already have an account?',
                            style: TextStyle(
                                color: Colors.purpleAccent,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 60),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
