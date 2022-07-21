import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 40),
                child: Text(
                  'MyPlanner',
                  style: GoogleFonts.lilyScriptOne(
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF41B03F),
                    fontSize: 40,
                  ),
                )),
            Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 40),
                child: Text(
                  'Sign In',
                  style: GoogleFonts.nunitoSans(
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF424242),
                    fontSize: 25,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding:
                        EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
                    child: Text(
                      'Phone Number',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunitoSans(
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF424242),
                        fontSize: 15,
                      ),
                    )),
              ],
            ),
            Padding(
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
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
                  child: Text(
                    'Password',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF424242),
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding:
                        EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
                    child: Text(
                      'Forget Password',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunitoSans(
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF424242),
                        fontSize: 10,
                      ),
                    )),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Color.fromARGB(255, 65, 176, 63)),
              padding: EdgeInsets.only(
                  left: 115.0, right: 115.0, bottom: 10, top: 10),
              //color: Color.fromARGB(255, 65, 176, 63),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {},
                child: Text(
                  'Sign In',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 115.0, right: 5.0, bottom: 5),
                  child: Text(
                    ' Don’t have an account?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF424242),
                      fontSize: 10,
                    ),
                  ),
                ),
                Text(
                  'SIGN UP',
                  style: GoogleFonts.nunitoSans(
                    fontStyle: FontStyle.normal,
                    color: Color.fromARGB(255, 65, 176, 63),
                    fontSize: 10,
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
