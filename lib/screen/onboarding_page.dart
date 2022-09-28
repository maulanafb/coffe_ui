import 'package:coffe_ui/shared/theme.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/1.png'), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Text(
              'Sweet &\nNaise Coffee',
              style: primaryTextStyle.copyWith(fontWeight: black),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 180),
            child: Text(
              'Naise Coffee can change The \natmosphere  in the morning',
              style: subTextStyle.copyWith(),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 260,
            height: 55,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                // blurStyle: BlurStyle.solid,
                blurStyle: BlurStyle.normal,
                blurRadius: 9,
                color: Color.fromARGB(255, 100, 98, 98),
                offset: Offset(
                  -4,
                  4,
                ),
                spreadRadius: 0.1,
              )
            ], borderRadius: BorderRadius.circular(100), color: primaryColor),
            margin: EdgeInsets.only(top: 650),
            child: TextButton(
                // style: TextButton.styleFrom(backgroundColor: primaryColor),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  'ORDER NOW',
                  style: whiteTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 14),
                )),
          )
        ],
      ),
    );
  }
}
