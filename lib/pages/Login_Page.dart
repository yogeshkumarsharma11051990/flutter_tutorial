// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:demo_project/utils/MyRouts.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changed = false;

  final _formKey = GlobalKey<FormState>();

  moveToHomePage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(
        () => changed = true,
      );
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRouts.homeRout);
      setState(
        () => changed = false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Column(
                children: [
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter UserName";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: "Enter Username", hintText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter Password";
                      } else if (value!.length < 6) {
                        return "Password length should have 6 char at least";
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Enter Password", hintText: "Password"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(changed ? 50 : 10),
                    child: InkWell(
                      onTap: () {
                        moveToHomePage(context);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changed ? 50 : 150,
                        height: 40,
                        alignment: Alignment.center,
                        child: changed
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
