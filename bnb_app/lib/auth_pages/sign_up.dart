// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:bnb_app/auth_pages/login.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  Future<void> _signUp(BuildContext context) async {
    final url =
        Uri.parse("https://8347-41-212-14-148.ngrok-free.app/api/v1/users");
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'username': _usernameController.text,
        'email': _emailController.text,
        'phone': _phoneController.text,
        'password': _passwordController.text,
        'confirm_password': _confirmPasswordController.text,
      }),
    );
    if (response.statusCode == 200 ||
        response.body.contains("new user created successfully")) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Account Created Succesfully!"),
          duration: Duration(seconds: 3),
        ),
      );
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginPage()),
      );
    } else {
      print('Failed to sign up.');
      print(response.body);
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: const [
                    Color(0xffB81736),
                    Color(0xff281537),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 60, left: 22),
                child: Text(
                  "Welcome\nSignUp here!",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(70),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        TextField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            label: Text(
                              "User Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB81736)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.email,
                              color: Colors.grey,
                            ),
                            label: Text(
                              "Email",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB81736)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _phoneController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.phone,
                              color: Colors.grey,
                            ),
                            label: Text(
                              "Phone",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB81736)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            label: Text(
                              "Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB81736)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: _confirmPasswordController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            label: Text(
                              "Confirm Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffB81736)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: const [
                                Color(0xffB81736),
                                Color(0xff281537),
                              ],
                            ),
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                _signUp(context);
                              },
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Already have an account?",
                                  style: TextStyle(fontSize: 18)),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => loginPage()),
                                  );
                                },
                                child: Text("Sign In",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
