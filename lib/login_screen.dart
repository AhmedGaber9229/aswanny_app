// ignore_for_file: must_be_immutable, avoid_print, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

import 'package:aswanny_app/dashboard.dart';
import 'package:aswanny_app/login_screen.dart';

import 'package:aswanny_app/main.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginScreen({Key key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(50),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                /*email*/ SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "يرجى كتابة اسم المستخدم";
                      } else {
                        return null;
                      }
                    },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'اسم المستخدم',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      prefixIcon: const Icon(
                        Icons.email,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                /*password*/ SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "اسم المستخدم كلمة المرور";
                      } else {
                        return null;
                      }
                    },
                    controller: passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye,
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      child: const Text('Forgot password?'),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                /*login*/ Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 191, 255, .9),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 50,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        if (emailController.text == "ramy") {
                          if (passwordController.text == "1234") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardPage(),
                                ));
                          }
                        }
                        if (emailController.text == "mamdoh") {
                          if (passwordController.text == "123456789") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardPage(),
                                ));
                          }
                        }
                        if (emailController.text == "ahmed") {
                          if (passwordController.text == "12345") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          }
                        }
                        if (emailController.text == "eslam") {
                          if (passwordController.text == "123456") {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardPage(),
                                ));
                          }
                        }
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.

                      }
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Opacity(
                  opacity: 0.5,
                  child: Text(
                    '                                                                            ',
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Opacity(
                  opacity: 0.5,
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 115,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
