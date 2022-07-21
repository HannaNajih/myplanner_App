import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                          padding: EdgeInsets.only(
                              left: 15.0, right: 15.0, bottom: 40),
                          child: Text(
                            'MyPlanner',
                            style: GoogleFonts.lilyScriptOne(
                              fontStyle: FontStyle.normal,
                              color: Color(0xFF41B03F),
                              fontSize: 40,
                            ),
                          )),
                      Container(
                          padding: EdgeInsets.only(
                              left: 15.0, right: 15.0, bottom: 40),
                          child: Text(
                            'Sign Up',
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
                              padding: EdgeInsets.only(
                                  left: 15.0, right: 15.0, bottom: 5),
                              child: Text(
                                'Full Name',
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
                              padding: EdgeInsets.only(
                                  left: 15.0, right: 15.0, bottom: 5),
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
                              padding: EdgeInsets.only(
                                  left: 15.0, right: 15.0, bottom: 20),
                              child: Text(
                                'Phone number must be 10 digits 712 345 67 89',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunitoSans(
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xFF424242),
                                  fontSize: 10,
                                ),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 15.0, right: 15.0, bottom: 5),
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
                        padding:
                            EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
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
                              padding: EdgeInsets.only(
                                  left: 15.0, right: 15.0, bottom: 20),
                              child: Text(
                                'Password should be at least 6 characters',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunitoSans(
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xFF424242),
                                  fontSize: 10,
                                ),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 15.0, right: 15.0, bottom: 5),
                            child: Text(
                              'Repeat Password',
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
                        padding: EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 20),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // padding: EdgeInsets.only(left: 115.0, right: 5.0, bottom: 5),
                            child: Center(
                              child: Text(
                                '  Already have an account?',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunitoSans(
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xFF424242),
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'SIGN IN',
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
              );
            },
          ),
        ),
      ),
    );
  }
}
