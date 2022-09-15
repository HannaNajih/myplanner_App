import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todo/onboardingpages.dart';
import 'package:todo/src/auth_screens/newpassword.dart';
import 'package:todo/src/auth_screens/signin.dart';
import 'package:todo/src/services/notification_sevices.dart';
import 'package:todo/src/pages/home_page.dart';
import 'package:todo/src/tab_bar.dart';
import 'package:todo/src/widgets/theme.dart';
import 'package:todo/src/services/theme_service.dart';

void main() async {
  runApp(OnBoardingScreen());
  WidgetsFlutterBinding.ensureInitialized();
  final NotifyHelper notifyHelper = NotifyHelper();
  NotifyHelper().initializeNotifications();
  notifyHelper.requestIOSPermission();
  //android pewesty ba dawakrdne permission nia boia hich configurationy nawet
  notifyHelper.initializeNotifications();
}
