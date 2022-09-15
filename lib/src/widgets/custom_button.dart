import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.myFunc,
  }) : super(key: key);
  final String label;
  final Function() myFunc;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFunc,
      child: Container(
        width: 326,
        height: 48,
        //color: Globgreen,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), color: Globgreen),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            softWrap: true,
            style: GoogleFonts.nunitoSans(
              fontStyle: FontStyle.normal,
              color: selectionWhiteColor,
              fontSize: 23,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
