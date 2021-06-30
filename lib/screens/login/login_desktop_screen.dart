import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class LoginDesktop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginDesktopState();
}

class _LoginDesktopState extends State<LoginDesktop> {
  Artboard _riveArtboard;
  RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    rootBundle.load('rive/neon_car.riv').then((data) async {
      final file = RiveFile();
      if(file.import(data)) {
        final artboard = file.mainArtboard;
        artboard.addController(_controller = SimpleAnimation('drive'));
        setState(() => _riveArtboard = artboard);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 100, vertical: 25),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: Container(
              width: double.infinity,
              height: 650.0,
              child: Padding(padding: EdgeInsets.all(35.0),
              child: Row(
                children: <Widget>[
                  Expanded(child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Row(
                        children: [
                          Text(
                            "Sign-In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Center(
                            child: Icon(
                              Icons.login_rounded,
                              color: Colors.deepPurple,
                              size: 50,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50.0),
                      customTextField("Email", "you@example.com", Icons.mail, false),
                      SizedBox(height: 25.0),
                      customTextField("Password", "Enter Password", Icons.lock, true),
                      SizedBox(height: 50.0),
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
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
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
                      )),
                      SizedBox(height: 23.0),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Don't have an account?",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 18,
                                )
                              ),
                              TextSpan(
                                text: "Sign-Up",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 18,
                                )
                              ),
                            ]
                          )
                        ),
                      )
                      ],
                    ),
                    )
                  ),
                  SizedBox(width: 25.0),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: Material(
                        borderRadius: BorderRadius.circular(17.0),
                        child: _riveArtboard == null ? const SizedBox() : Rive(artboard: _riveArtboard),
                      ),
                    ),
                  )
                ],
              ),
              ),
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
            color: Colors.white70
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
