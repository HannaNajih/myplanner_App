import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/src/widgets/size_config.dart';

import 'package:todo/src/widgets/theme.dart';
//import 'package:myplanner/widgets/size_config.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.title,
      required this.hint,
      this.controller,
      this.widget})
      : super(key: key);
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        padding: const EdgeInsets.only(top: 8),
        margin: const EdgeInsets.only(left: 14),
        child: Flexible(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: typingTextStyle,
          ),
          Container(
              height: 48,
              width: 328,
              padding: const EdgeInsets.only(left: 14),
              margin: const EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                color: selectionWhiteColor,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: selectionGrayClor,
                    width: 0.0,
                    style: BorderStyle.solid),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      maxLines: 1,
                      autofocus: false,
                      decoration: InputDecoration(
                        //prefixIcon: const Icon(Icons.done),
                        fillColor: selectionWhiteColor,
                        hintStyle: hintTextStyle,
                        // labelText: title,
                        hintText: hint,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: context.theme.backgroundColor)),
                        //am propertia bo awa bakar yat kate clickman la textfieldaka krd
                        //am gorankaryana rw bdat la borderakaida
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: context.theme.backgroundColor)),
                      ),
                    ),
                  ),
                  widget ?? Container(),
                ],
              ))
        ])));
  }
}
