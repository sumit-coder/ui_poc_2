import 'package:design_system_v2/ui_constants.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/TextPerviewScreen.dart';
import 'Screens/fontHeightDemo.dart';

void main() {
  runApp(const MyApp());
  // DevicePreview(
  //   enabled: true,
  //   builder: (context) => MyApp(), // Wrap your app
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true, //
      // locale: DevicePreview.locale(context), //
      // builder: DevicePreview.appBuilder, //
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        // Colors
        colorScheme: ColorScheme.light(
          primary: primaryColor,
          secondary: secondryColor,
        ),
        // Text Theme,
        textTheme: const TextTheme(
          //
          displayLarge: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 57,
            height: 1.19,
            letterSpacing: -1.25,
          ),
          displayMedium: TextStyle(
            color: Colors.black,
            fontSize: 45,
            height: 1.24,
            letterSpacing: -1,
            fontWeight: FontWeight.w400,
          ),
          displaySmall: TextStyle(
            color: Colors.black,
            fontSize: 36,
            height: 1.24,
            letterSpacing: -0.75,
            fontWeight: FontWeight.w400,
          ),
        ),
        // Navigation Bottom
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: primaryColor,
          indicatorColor: secondryColor,
        ),
        // Elevated Button Theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(
              const Color(0xFFF7F2F9),
            ),
          ),
        ),
      ),
      home: const TextPreviewScreen(),
    );
  }
}
