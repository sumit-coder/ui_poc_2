import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontsHeights extends StatelessWidget {
  const FontsHeights({Key? key}) : super(key: key);

  final double fontHeight = 1.3;
  final double fontSize = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        '| FontSize: 50 |',
                      ),
                      const Text(
                        ' FontHeight: 1.3 (1.3*50 = 65) |',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.orange,
                          width: 50,
                          height: 50,
                          child: Center(child: Text('50px')),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Quick brown',
                          style: TextStyle(
                            backgroundColor: Colors.purple,
                            fontSize: fontSize,
                            height: fontHeight, // 1 == 50px
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Quick brown',
                          style: TextStyle(
                            backgroundColor: Colors.purple,
                            // backgroundColor: Colors.red,
                            fontSize: fontSize,
                            height: fontHeight, // 1 == 50px
                            fontFamily: GoogleFonts.lato().fontFamily,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'अंतरिक्ष यान',
                          style: TextStyle(
                            backgroundColor: Colors.pink,
                            fontSize: fontSize,
                            height: fontHeight, // 1 == 50px
                            fontFamily: GoogleFonts.hind().fontFamily,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'अंतरिक्ष यान',
                          style: TextStyle(
                            backgroundColor: Colors.pink,
                            fontSize: fontSize,
                            height: fontHeight, // 1 == 50px
                            fontFamily: GoogleFonts.mukta().fontFamily,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'গাধাকে দেখে',
                          style: TextStyle(
                            backgroundColor: Colors.red,
                            fontSize: fontSize,
                            height: fontHeight, // 1 == 50px
                            fontFamily: GoogleFonts.hindSiliguri().fontFamily,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'গাধাকে দেখে',
                          style: TextStyle(
                            backgroundColor: Colors.red,
                            fontSize: fontSize,
                            height: fontHeight, // 1 == 50px
                            fontFamily: GoogleFonts.anekBangla().fontFamily,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'રાજા વિક્રમના',
                          style: TextStyle(
                            backgroundColor: Colors.blue,
                            fontSize: fontSize,
                            height: fontHeight, // 1 == 50px
                            fontFamily: GoogleFonts.muktaVaani().fontFamily,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'રાજા વિક્રમના',
                          style: TextStyle(
                            backgroundColor: Colors.blue,
                            fontSize: fontSize,
                            height: fontHeight, // 1 == 50px
                            fontFamily: GoogleFonts.hindVadodara().fontFamily,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'ప్రతి సంవత్సరం',
                          style: TextStyle(
                            backgroundColor: Colors.amber,
                            fontSize: fontSize,
                            height: fontHeight, // 1 == 50px
                            fontFamily: GoogleFonts.balooTamma2().fontFamily,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'ప్రతి సంవత్సరం',
                          style: TextStyle(
                            backgroundColor: Colors.amber,
                            fontSize: fontSize,
                            height: fontHeight, // 1 == 50px
                            fontFamily: GoogleFonts.mandali().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.blue,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quick brown',
                            style: TextStyle(
                              // backgroundColor: Colors.purple,
                              fontSize: fontSize,
                              height: fontHeight, // 1 == 50px
                              fontFamily: GoogleFonts.roboto().fontFamily,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Quick brown',
                            style: TextStyle(
                              // backgroundColor: Colors.red,
                              fontSize: fontSize,
                              height: fontHeight, // 1 == 50px
                              fontFamily: GoogleFonts.lato().fontFamily,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'अंतरिक्ष यान',
                            style: TextStyle(
                              // backgroundColor: Colors.red,
                              fontSize: fontSize,
                              height: fontHeight, // 1 == 50px
                              fontFamily: GoogleFonts.hind().fontFamily,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'अंतरिक्ष यान',
                            style: TextStyle(
                              // backgroundColor: Colors.red,
                              fontSize: fontSize,
                              height: fontHeight, // 1 == 50px
                              fontFamily: GoogleFonts.mukta().fontFamily,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'গাধাকে দেখে',
                            style: TextStyle(
                              // backgroundColor: Colors.red,
                              fontSize: fontSize,
                              height: fontHeight, // 1 == 50px
                              fontFamily: GoogleFonts.hindSiliguri().fontFamily,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'গাধাকে দেখে',
                            style: TextStyle(
                              // backgroundColor: Colors.red,
                              fontSize: fontSize,
                              height: fontHeight, // 1 == 50px
                              fontFamily: GoogleFonts.anekBangla().fontFamily,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'રાજા વિક્રમના',
                            style: TextStyle(
                              // backgroundColor: Colors.blue,
                              fontSize: fontSize,
                              height: fontHeight, // 1 == 50px
                              fontFamily: GoogleFonts.muktaVaani().fontFamily,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'રાજા વિક્રમના',
                            style: TextStyle(
                              // backgroundColor: Colors.blue,
                              fontSize: fontSize,
                              height: fontHeight, // 1 == 50px
                              fontFamily: GoogleFonts.hindVadodara().fontFamily,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'ప్రతి సంవత్సరం',
                            style: TextStyle(
                              // backgroundColor: Colors.amber,
                              fontSize: fontSize,
                              height: fontHeight, // 1 == 50px
                              fontFamily: GoogleFonts.balooTamma2().fontFamily,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'ప్రతి సంవత్సరం',
                            style: TextStyle(
                              // backgroundColor: Colors.amber,
                              fontSize: fontSize,
                              height: fontHeight, // 1 == 50px
                              fontFamily: GoogleFonts.mandali().fontFamily,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
