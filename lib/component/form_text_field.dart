import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    Key? key, required this.hintText, this.suffixIcon,
    this.prefixIcon,  this.controller,
  }) : super(key: key);
  final String hintText;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  //final obscureText = false;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    // return TextFormField(
    //   controller: controller,
    //   keyboardType: TextInputType.text,
    //   decoration: InputDecoration(
    //     hintText: hintText,
    //     hintStyle: GoogleFonts.urbanist(
    //       textStyle: const TextStyle(
    //         color: Colors.grey,
    //         fontSize: 16,
    //         fontWeight: FontWeight.w400,
    //       ),
    //     ),
    //     border: const OutlineInputBorder(
    //       borderSide: BorderSide(
    //         color: Colors.transparent,
    //       ),
    //       borderRadius: BorderRadius.all(
    //         Radius.circular(10),
    //       ),
    //     ),
    //     suffixIcon:  suffixIcon,
    //     prefixIcon:  prefixIcon,
    //   ),
    // );
    return Container(
      height: 48,
      padding: const EdgeInsets.only(left: 1, top: 2, right: 1),
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color:const Color(0xFFFAFAFA),
      ),
      child: TextField(
        obscureText: hintText == 'Password' ? true : false,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: GoogleFonts.urbanist(
            textStyle: Theme.of(context).textTheme.subtitle1,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color:const  Color(0xFF9E9E9E),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}