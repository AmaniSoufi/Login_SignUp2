import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled4/Custom_Widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _onekey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _onekey,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: height * 0.01),
                  child: Container(
                    height: height * 0.25,
                    child: Image.asset("images/Many Smile.jpg"),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsetsDirectional.symmetric(horizontal: width * 0.15),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                    "SignUp",
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
                  hint: "Mobile Number",
                  icon: Icons.phone,
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
                      padding: EdgeInsets.symmetric(horizontal: width * 0.28),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.yellow,
                      side: BorderSide(color: Colors.yellow, width: 4.0),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      _onekey.currentState!.validate();
                    },
                    child: Text(
                      "SignUp",
                      style: TextStyle(fontSize: 14),
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
                        "Already a member?",
                        style: TextStyle(fontSize: 15),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          "login",
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
