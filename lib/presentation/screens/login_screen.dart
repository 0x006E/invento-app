import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final form = fb.group({
    'username': '',
    'password': '',
  });

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
          child: Container(
        width: deviceWidth * 0.75,
        padding: EdgeInsets.all(15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image(
            image: AssetImage('images/invento.png'),
            width: deviceWidth * 0.35,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            "Welcome back",
            style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 16,
          ),
          ReactiveForm(
            formGroup: form,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Username: "),
                ReactiveTextField(
                  formControlName: 'username',
                ),
                SizedBox(
                  height: 16,
                ),
                const Text("Password: "),
                ReactiveTextField(
                  formControlName: 'password',
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(
                            40), // fromHeight use double.infinity as width and 40 is the height
                      ),
                      onPressed: () {},
                      child: Text("Login"),
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1.5,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: "Sign up",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/home', (route) => false);
                          },
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
