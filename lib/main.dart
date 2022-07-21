import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loginscreens/otpverify.dart';

void main() {
  runApp(OPTVerification());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pageview ',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page view '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PageView(
            children: <Widget>[
              Container(
                color: Colors.orange,
                child: Center(
                    child: Text(
                  'Page 1',
                  style: TextStyle(color: Colors.white),
                )),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                    child: Text(
                  'Page 2',
                  style: TextStyle(color: Colors.white),
                )),
              ),
              Container(
                color: Colors.green,
                child: Center(
                    child: Text(
                  'Page 3',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
