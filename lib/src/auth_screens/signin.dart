import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/src/auth_screens/newpassword.dart';
import 'package:todo/src/auth_screens/signup.dart';
import 'package:todo/src/pages/home_page.dart';
import 'package:todo/src/tab_bar.dart';
import 'package:todo/src/widgets/custom_button.dart';

import '../widgets/theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 40),
                child: Text(
                  'MyPlanner',
                  style: myplanner,
                )),
            Container(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 40),
                child: Text(
                  'Sign In',
                  style: GoogleFonts.nunitoSans(
                    fontStyle: FontStyle.normal,
                    color: const Color(0xFF424242),
                    fontSize: 25,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 5),
                    child: Text(
                      'Phone Number',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunitoSans(
                        fontStyle: FontStyle.normal,
                        color: const Color(0xFF424242),
                        fontSize: 15,
                      ),
                    )),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Number',
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
                  child: Text(
                    'Password',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(
                      fontStyle: FontStyle.normal,
                      color: const Color(0xFF424242),
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 1),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 0, bottom: 8),
                  child: Builder(
                    builder: (context) => TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewPassword()),
                          );
                        },
                        child: Text(
                          'Forget Pssword',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunitoSans(
                            fontStyle: FontStyle.normal,
                            color: const Color(0xFF424242),
                            fontSize: 10,
                          ),
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Builder(
                builder: (context) => Center(
                        child: CustomButton(
                      myFunc: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TabBarr()),
                        );
                      },
                      label: 'Sign in',
                    ))),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 5,
                    top: 5,
                  ),
                  padding:
                      const EdgeInsets.only(left: 115.0, right: 5.0, bottom: 5),
                  child: Text(
                    ' Don’t have an account?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(
                      fontStyle: FontStyle.normal,
                      color: const Color(0xFF424242),
                      fontSize: 10,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: Text(
                    'SIGN UP',
                    style: GoogleFonts.nunitoSans(
                      fontStyle: FontStyle.normal,
                      color: Globgreen,
                      fontSize: 10,
                    ),
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    ));
  }
}
