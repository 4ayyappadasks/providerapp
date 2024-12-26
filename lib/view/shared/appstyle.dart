import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextstyle extends StatelessWidget {
  const AppTextstyle({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.textDirection,
    this.overflow,
    this.softWrap,
    this.maxLines,
    this.locale,
    this.strutStyle,
    this.textScaleFactor,
    this.semanticsLabel,
  });

  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextOverflow? overflow;
  final bool? softWrap;
  final int? maxLines;
  final Locale? locale;
  final StrutStyle? strutStyle;
  final double? textScaleFactor;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(textStyle: style,),
      textAlign: textAlign,
      textDirection: textDirection,
      overflow: overflow,
      softWrap: softWrap,
      maxLines: maxLines,
      locale: locale,
      strutStyle: strutStyle,
      textScaleFactor: textScaleFactor,
      semanticsLabel: semanticsLabel,
    );
  }
}
