
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_sqflite/ui/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTextFieldWidget extends StatelessWidget {
  const InputTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.poppins(
        color: Colors.white,
      ),
      cursorColor: kSecondaryColor,
      decoration: InputDecoration(
        hintText: "Título",
        hintStyle: GoogleFonts.poppins(
          color: Colors.white54,
          fontSize: 14,
        ),
        filled: true,
        fillColor: Color(0xff2A2D37),
        prefixIcon: SvgPicture.asset(
          'assets/images/bx-bookmark.svg',
          color: Colors.white60,
          height: 10,
          fit: BoxFit.scaleDown,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}



