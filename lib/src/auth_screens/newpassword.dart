import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/src/auth_screens/signin.dart';
import 'package:todo/src/widgets/custom_button.dart';
import 'package:todo/src/widgets/theme.dart';

import '../widgets/custom_tfield.dart';

class NewPassword extends StatelessWidget {
  NewPassword({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _appbar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 40, top: 40),
                  child: Text(
                    'MyPlanner',
                    style: myplanner,
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25.0, bottom: 40, top: 40),
              child: Text(
                'Create Password',
                style: titleTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25.0, bottom: 10, top: 10),
              child: CustomTextField(
                title: 'New Password',
                hint: 'New Password',
                controller: controller,
                widget: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.password_outlined),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25.0, bottom: 10, top: 10),
              child: CustomTextField(
                title: 'Repeat Password',
                hint: 'Repeat Password',
                controller: controller,
                widget: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.password_outlined),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    left: 25.0, right: 25.0, bottom: 10, top: 30),
                child: Builder(
                    builder: (context) => Center(
                            child: CustomButton(
                          myFunc: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()),
                            );
                          },
                          label: 'Submit',
                        )))),
          ],
        ),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      leading: IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(
          Icons.arrow_back_ios,
          color: grayIconClr,
          size: 24,
        ),
      ),
      //am elevationa bo darkawtne appbarakaya wak away toze barz bwbetawa
      //dropshadoweke la bashe xwarwa adate

      elevation: 0,
      backgroundColor: backgroundpagecolor,
      // context.theme.backgroundColor,

      actions: const [
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
