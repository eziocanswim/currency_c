import 'package:flutter/material.dart';
import 'package:currency_c/appbar.dart';
import 'package:currency_c/converter.dart';
import 'package:currency_c/utils.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'CustomFont'),
      home: Builder(
        builder: (context) {
          ScreenSize().init(context);
          return const HomeScreen();
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ScreenSize.screenHeight * 0.2),
        child: const CustomAppBar(),
      ),
      body: Column(
        children: [
          SizedBox(height: ScreenSize.screenHeight * 0.1),
          const ConverterContainer(),
          SizedBox(height: ScreenSize.screenHeight * 0.075),
          Row(
            children: [
              SizedBox(
                width: ScreenSize.screenWidth * 0.1,
              ),
              Text("Indicative Exchange Rates",
                  style: TextStyle(color: Color(0xFF808080), fontSize: 15))
            ],
          )
        ],
      ),
    );
  }
}
