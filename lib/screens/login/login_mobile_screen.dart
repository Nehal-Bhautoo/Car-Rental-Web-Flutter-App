import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:rive/rive.dart';

class LoginMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 5,
          margin: EdgeInsets.symmetric(horizontal: 70.0, vertical: 50.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.0)
          ),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sign-In",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50.0),
                customTextField("Email", "you@example.com", Icons.mail, false),
                SizedBox(height: 20.0),
                customTextField("Password", "Enter Password", Icons.lock, true),
                SizedBox(height: 15.0),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password?",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ),
                SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.deepPurpleAccent.withOpacity(0.5);
                        return null; // Use the component's default.
                      },
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  )
                ),
                SizedBox(height: 23.0),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                          )
                        ),
                        TextSpan(
                          text: "Sign-Up",
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ]
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTextField(String title, String hintText, IconData icon, bool isPassword) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              fontSize: 15,
              color: Colors.black
          ),
        ),
        TextFormField(
          obscureText: isPassword,
          decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Icon(icon)
          ),
        )
      ],
    );
  }
}