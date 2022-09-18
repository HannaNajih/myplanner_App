import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';
import '../providers/user_provider.dart';
import '../services/auth_service.dart';
import '../services/firestore_service.dart';
import '../tab_bar.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_tfield.dart';
import '../widgets/theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SignUpScreen> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();
  AuthService authService = AuthService();
  FireStoreService fireStoreService = FireStoreService();
  FirebaseAuth _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  bool isLoading = false;
  String errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: isLoading == true
            ? const Center(child: CircularProgressIndicator())
            : DefaultTextStyle(
                style: Theme.of(context).textTheme.bodyMedium!,
                child: LayoutBuilder(
                  builder: (BuildContext context,
                      BoxConstraints viewportConstraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: viewportConstraints.maxHeight,
                        ),
                        child: SizedBox(
                          child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 15.0,
                                        right: 15.0,
                                        bottom: 40,
                                        top: 150),
                                    child: Text('MyPlanner', style: myplanner)),
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0, bottom: 40),
                                    child:
                                        Text('Sign Up', style: titleTextStyle)),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0, bottom: 20),
                                    child: CustomTextField(
                                        controller: userNameController,
                                        title: 'Full Name',
                                        hint: 'Enter Your Name')),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0, bottom: 5),
                                    child: CustomTextField(
                                        controller: phoneNumberController,
                                        title: 'Email',
                                        hint: 'Enter Youur Email')),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.only(
                                            left: 100.0,
                                            right: 15.0,
                                            bottom: 20),
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
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15.0, bottom: 5),
                                  child: CustomTextField(
                                      controller: passwordController,
                                      title: 'Password',
                                      hint: 'Enter Your Password',
                                      widget: IconButton(
                                        icon: Icon(
                                          _isObscure
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                        onPressed: () {
                                          _isObscure = false;
                                        },
                                      )),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.only(
                                            left: 100.0,
                                            right: 15.0,
                                            bottom: 20),
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
                                Container(
                                    padding: const EdgeInsets.only(
                                        left: 15.0, right: 15.0, bottom: 20),
                                    child: CustomTextField(
                                        validatore: (value) {
                                          if (repasswordController.text !=
                                              passwordController.text) {
                                            return "Password don't match";
                                          }
                                          return null;
                                        },
                                        title: 'Repeate Pasword',
                                        hint: 'Repeate Pasword',
                                        controller: repasswordController,
                                        widget: Padding(
                                          padding: const EdgeInsets.all(9),
                                          child: Icon(
                                            _isObscure
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                        ))),
                                CustomButton(
                                    label: 'Sign Up',
                                    myFunc: () async {
                                      _signUp(emailController.text,
                                          passwordController.text, context);

                                      setState(() {
                                        isLoading = false;
                                      });
                                    }),
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
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //       builder: (context) =>
                                          //            ),
                                          // );
                                        },
                                        child: Text(
                                          'SIGN IN',
                                          style: GoogleFonts.nunitoSans(
                                            fontStyle: FontStyle.normal,
                                            color: const Color.fromARGB(
                                                255, 65, 176, 63),
                                            fontSize: 10,
                                          ),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }

  void _signUp(String email, String password, Context) async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {postDetailForFireStore()})
            .catchError((e) {
          Fluttertoast.showToast(msg: e!.message);
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
      }
    }
  }

  Future postDetailForFireStore() async {
    FirebaseFirestore firebasefirestore = FirebaseFirestore.instance;
    User? user = await _auth.currentUser;
    UserModel usermodel = UserModel();
    if (user != null) {
      usermodel.email = user.email;
      usermodel.uID = user.uid;
      usermodel.name = userNameController.text;
      usermodel.phone;
      usermodel.image;

      await firebasefirestore
          .collection("user")
          .doc(user.uid)
          .set(usermodel.toMap());
      Fluttertoast.showToast(msg: "Account created successfully");
      Navigator.pushAndRemoveUntil(
          (context),
          MaterialPageRoute(builder: (context) => const TabBarr()),
          (route) => false);
    } else {
      const Text("error");
    }
  }
  // Future _signUp() async {

  //   await authService
  //       .createUserWithEmailAndPassword(
  //           email: emailController.text.trim(),
  //           password: passwordController.text)
  //       .then((userCredential) async {
  //     //second step
  //     if (userCredential != null && userCredential.user != null) {
  //       await fireStoreService
  //           .addUserWithInitialInformationToDB(
  //               user: userCredential.user!,
  //               userName: userNameController.text,
  //               phoneNumber: phoneNumberController.text)
  //           .then((userModel) {
  //         Provider.of(context)<UserProvider>().setUserModel(userModel);
  //       });
  //     }
  //   });
  //   Get.to(() => const TabBarr());
  // }
}
