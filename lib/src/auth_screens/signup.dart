import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/src/auth_screens/signin.dart';

import '../widgets/theme.dart';
import '../pages/home_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SignUpScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyText2!,
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, bottom: 40, top: 150),
                          child: Text('MyPlanner', style: myplanner)),
                      Container(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, bottom: 40),
                          child: Text('Sign Up', style: buttonTextStyle)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0, bottom: 5),
                              child: Text('Full Name',
                                  textAlign: TextAlign.center,
                                  style: typingTextStyle)),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Full Name',
                            hintText: 'Enter Your Name',
                          ),
                        ),
                      ),
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
                        padding:
                            EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Phone Number',
                            hintText: 'Enter Your Number',
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0, bottom: 20),
                              child: Text(
                                'Phone number must be 10 digits 712 345 67 89',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunitoSans(
                                  fontStyle: FontStyle.normal,
                                  color: const Color(0xFF424242),
                                  fontSize: 10,
                                ),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, bottom: 5),
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
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 5),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
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
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 15.0, bottom: 20),
                              child: Text(
                                'Password should be at least 6 characters',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunitoSans(
                                  fontStyle: FontStyle.normal,
                                  color: const Color(0xFF424242),
                                  fontSize: 10,
                                ),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 15.0, right: 15.0, bottom: 5),
                            child: Text(
                              'Repeat Password',
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
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 20),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'Repeat Password',
                            hintText: ' Repeat Enter Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
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
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            color: Color.fromARGB(255, 65, 176, 63)),
                        padding: const EdgeInsets.only(
                            left: 115.0, right: 115.0, bottom: 10, top: 10),
                        //color: Color.fromARGB(255, 65, 176, 63),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunitoSans(
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              '  Already have an account?',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunitoSans(
                                fontStyle: FontStyle.normal,
                                color: const Color(0xFF424242),
                                fontSize: 10,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignIn()),
                                );
                              },
                              child: Text(
                                'SIGN IN',
                                style: GoogleFonts.nunitoSans(
                                  fontStyle: FontStyle.normal,
                                  color: const Color.fromARGB(255, 65, 176, 63),
                                  fontSize: 10,
                                ),
                              ))
                        ],
                      ),
                    ],
                  )),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
