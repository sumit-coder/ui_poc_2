import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xFFF7F2F9);
Color secondryColor = Color(0xFFE8DEF8);
Color tertiaryColor = Color(0xFF6750A4);

String getFontFamily({required int languageIndex, bool? otherFontsFamilys}) {
  List<String> fontFamily = [
    'Kohinoor',
    'Kohinoor',
    'KohinoorGujarati',
    'KohinoorTelugu',
    'KohinoorBangla',
  ]; // in this list fontsFamily should be in same index as Language Data

  List<String> otherFontFamily = [
    GoogleFonts.roboto().fontFamily ?? 'Kohinoor',
    GoogleFonts.hind().fontFamily ?? 'Kohinoor',
    GoogleFonts.hindVadodara().fontFamily ?? 'KohinoorGujarati',
    GoogleFonts.balooTamma2().fontFamily ?? 'KohinoorTelugu',
    GoogleFonts.anekBangla().fontFamily ?? 'KohinoorBangla',
  ]; // in this list fontsFamily should be in same index as Language Data

  if (otherFontsFamilys == true) {
    return otherFontFamily[languageIndex];
  } else {
    return fontFamily[languageIndex];
  }
}

String bodyText =
    "Mattis pellentesque id nibh tortor id aliquet lectus proin. Eu augue ut lectus arcu. Erat nam at lectus urna. Parturient montes nascetur ridiculus mus mauris vitae ultricies. Morbi tristique senectus et netus. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. Posuere urna nec tincidunt praesent semper. Ridiculus mus mauris vitae ultricies leo integer. Venenatis a condimentum vitae sapien pellentesque habitant morbi tristique. Ullamcorper eget nulla facilisi etiam dignissim diam quis. Id eu nisl nunc mi ipsum faucibus vitae.";

List<Widget> retrunGridLines(double sizeofscreen) {
  List<Widget> listOfGridLines = [];
  int lineCount = (sizeofscreen / 4).toInt();

  for (var i = 0; i < lineCount; i++) {
    if ((i + 1) % 2 == 0) {
      listOfGridLines.add(
        Container(
          height: 4,
          color: Color.fromARGB(255, 255, 207, 207),
        ),
      );
    } else {
      listOfGridLines.add(
        Container(
          height: 4,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      );
    }
  }

  return listOfGridLines;
}
