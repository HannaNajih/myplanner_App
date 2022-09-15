// import 'package:flutter/material.dart';
// import 'package:phone_number/phone_number.dart';


// class PhoneNumberTest extends StatelessWidget {
//   const PhoneNumberTest({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var darkTheme = ThemeData.dark().copyWith(primaryColor: Colors.blue);

//     return MaterialApp(
//       title: 'Demo',
//       themeMode: ThemeMode.dark,
//       darkTheme: darkTheme,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(title: const Text('noappbar')),
//         body: const MyHomePage(),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   MyHomePageState createState() => MyHomePageState();
// }

// class MyHomePageState extends State<MyHomePage> {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();

//   final TextEditingController controller = TextEditingController();
//   String initialCountry = 'NG';
//   //PhoneNumber number =  PhoneNumber(countryCode: 'jh', e164: 'jjj', international: '', nationalNumber: '', national: '', regionCode: '', type:);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Text('hello');
//       Form(
//         key: formKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             InternationalPhoneNumberInput(
//               onInputChanged: (PhoneNumber number) {
//                 // ignore: avoid_print
//                 print(number.phoneNumber);
//               },
//               onInputValidated: (bool value) {
//                 // ignore: avoid_print
//                 print(value);
//               },
//               selectorConfig: const SelectorConfig(
//                 selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
//               ),
//               ignoreBlank: false,
//               autoValidateMode: AutovalidateMode.disabled,
//               selectorTextStyle: const TextStyle(color: Colors.black),
//               initialValue: number,
//               textFieldController: controller,
//               formatInput: false,
//               keyboardType: const TextInputType.numberWithOptions(
//                   signed: true, decimal: true),
//               inputBorder: const OutlineInputBorder(),
//               onSaved: (PhoneNumber number) {
//                 // ignore: avoid_print
//                 print('On Saved: $number');
//               },
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 formKey.currentState!.validate();
//               },
//               child: const Text('Validate'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 getPhoneNumber('+15417543010');
//               },
//               child: const Text('Update'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 formKey.currentState!.save();
//               },
//               child: const Text('Save'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void getPhoneNumber(String phoneNumber) async {
//     PhoneNumber number =
//         await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

//     setState(() {
//       this.number = number;
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }
