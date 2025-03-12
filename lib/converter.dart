import 'package:flutter/material.dart';
import 'package:currency_c/utils.dart';
import 'package:currency_c/currency_components.dart';

class ConverterContainer extends StatelessWidget {
  const ConverterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ScreenSize.screenWidth * 0.85,
        height: ScreenSize.screenHeight * 0.35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 1,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [const AmountBox(), const InterChanger()]));
  }
}

class InterChanger extends StatelessWidget {
  const InterChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColoredBox(
            color: Color(0xFF000000),
            child: SizedBox(
              width: ScreenSize.screenWidth * 0.32,
              height: 1,
            )),
        CircleAvatar(
          backgroundColor: Color(0xFF26278D),
          radius: ScreenSize.screenWidth * 0.0725,
          child: IconButton(
              onPressed: () {
                print("INTERCHANGED");
              },
              icon: Icon(
                  color: Color(0xFFFFFFFF),
                  Icons.swap_vert,
                  size: ScreenSize.screenWidth * 0.1)),
        ),
        ColoredBox(
            color: Color(0xFF000000),
            child: SizedBox(
              width: ScreenSize.screenWidth * 0.32,
              height: 1,
            ))
      ],
    ));
  }
}

class AmountBox extends StatelessWidget {
  const AmountBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(children: [
        SizedBox(height: 1, width: ScreenSize.screenWidth * 0.0325),
        Text(
          "Amount",
          style: TextStyle(fontSize: 15, color: Color(0xFF808080)),
        )
      ]),
      Row(children: [
        SizedBox(height: 1, width: ScreenSize.screenWidth * 0.0325),
        CurrencyHolder()
      ])
    ]);
  }
}
