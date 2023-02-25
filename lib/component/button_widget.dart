import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key, required this.text, this.onPressed,
  }) : super(key: key);
  final String text;
  final VoidCallback? onPressed;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: GoogleFonts.urbanist(
            textStyle: Theme.of(context).textTheme.subtitle1,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
