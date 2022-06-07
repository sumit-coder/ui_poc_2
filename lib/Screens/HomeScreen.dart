// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../ui_constants.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      'FIC',
                      style: TextStyle(
                        fontSize: 57,
                        color: Color(0xff21005D),
                        // height: 68,
                      ),
                    ),
                    Text(
                      'Design System v0.2',
                      style: TextStyle(
                        fontSize: 14,
                        height: 0.4,
                        letterSpacing: 0.25,
                        color: Color(0xFF21005D),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Column(
                  children: [
                    SimpleButton(
                      onTapFunctin: () {},
                      title: 'English',
                      iconData: Icons.circle,
                    ),
                    SimpleButton(
                      onTapFunctin: () {},
                      title: 'हिन्दी',
                      iconData: Icons.circle,
                    ),
                    SimpleButton(
                      onTapFunctin: () {},
                      title: 'ગુજરાતી',
                      iconData: Icons.circle,
                    ),
                    SimpleButton(
                      onTapFunctin: () {},
                      title: 'తెలుగు',
                      iconData: Icons.circle,
                    ),
                    SimpleButton(
                      onTapFunctin: () {},
                      title: 'বাংলা',
                      iconData: Icons.circle,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onTapFunctin,
  }) : super(key: key);

  final String title;
  final IconData iconData;
  final VoidCallback onTapFunctin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 56,
      width: 280,
      child: ElevatedButton(
        onPressed: () {
          onTapFunctin();
        },
        // onTap: () {},
        child: Row(
          children: [
            SizedBox(width: 10),
            Icon(
              iconData,
              size: 12,
              color: Color(0xFF49454F),
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                height: 0.4,
                letterSpacing: 0.1,
                color: Color(0xFF49454F),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
