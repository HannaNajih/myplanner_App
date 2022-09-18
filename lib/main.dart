import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';

//import 'onboardingpages.dart';
import 'firebase_options.dart';
import 'src/auth_screens/signin.dart';
import 'src/auth_screens/signup.dart';
import 'src/pages/home_page.dart';
import 'src/services/notification_sevices.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: unused_local_variabl
  final NotifyHelper notifyHelper = NotifyHelper();
  await NotifyHelper().initializeNotifications();
  await notifyHelper.requestIOSPermission();
  //android pewesty ba dawakrdne permission nia boia hich configurationy nawet
  // await notifyHelper.initializeNotifications();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const SignUpScreen());
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Somthing went Wrong, Please try again later'),
              );
            } else if (snapshot.hasData) {
              return const HomePage();
            } else {
              return const SignIn();
            }
          },
        ),
      ),
    );
  }
}
