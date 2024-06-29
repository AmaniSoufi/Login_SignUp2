import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled4/Custom_Widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _globalKey,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: height * 0.35,
                  child: Image.asset(
                      "images/Free Vector _ Online friends concept illustration.jpg"),
                ),
                Container(
                  padding:
                      EdgeInsetsDirectional.symmetric(horizontal: width * 0.15),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                customTextFormFeild(
                  width: width,
                  hint: "UserName",
                  icon: Icons.person,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                customTextFormFeild(
                  width: width,
                  hint: "Password",
                  icon: Icons.lock,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  height: height * 0.07,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.29),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.yellow,
                      side: BorderSide(color: Colors.yellow, width: 3.0),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      _globalKey.currentState!.validate();
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.155),
                  child: Row(
                    children: [
                      Text(
                        "Not a member?",
                        style: TextStyle(fontSize: 15),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/Signup');
                        },
                        child: Text(
                          "signUp",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
