import 'package:book_store/screens/login_signup/login.dart';
import 'package:book_store/styles/export_styles.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: BookFanColors.white,
      body: SafeArea(
        top: true,
        left: true,
        right: true,
        bottom: true,
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'BookShopFan',
                  style: BookTextStyle.logoLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                Image.network(
                  'https://i.pinimg.com/originals/f2/7b/39/f27b3964e7609db24c4331eefd8d7c0e.png',
                  height: screenHeight * 0.4,
                  width: screenWidth,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                  width: screenWidth,
                  child: Text(
                    'Reading everywhere?\nBuy bestsellers from around the world',
                    textAlign: TextAlign.center,
                    style: BookTextStyle.bodyTextBlk,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                SizedBox(
                  height: screenHeight * 0.08,
                  width: screenWidth,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: BookTextStyle.buttonText,
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: BookFanColors.burgundy,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
