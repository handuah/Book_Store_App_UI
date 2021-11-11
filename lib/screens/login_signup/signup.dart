import 'package:book_store/screens/main_screens/navigation_screens.dart';
import 'package:flutter/material.dart';
import 'package:book_store/styles/export_styles.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: BookFanColors.white,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.14,
              ),
              Center(
                child: Text(
                  'Sign Up',
                  style: BookTextStyle.heading_2,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const _EmailField(),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    const _PasswordField(),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    const _ReconfirmedPassword(),
                    SizedBox(
                      height: screenHeight * 0.04,
                    ),
                    const _CreateAccButton(),
                    SizedBox(
                      height: screenHeight * 0.04,
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Or SignUp with',
                  style: BookTextStyle.authorNameText,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const _SocialMediaCircles(),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              SizedBox(
                height: screenHeight * 0.1,
                width: screenWidth,
                child: Text(
                  'By signing in, you agree to our Terms and Conditions and have read and understood our Privacy Policy',
                  style: BookTextStyle.authorNameText,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmailField extends StatefulWidget {
  const _EmailField({Key? key}) : super(key: key);

  @override
  __EmailFieldState createState() => __EmailFieldState();
}

class __EmailFieldState extends State<_EmailField> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.07,
      child: TextFormField(
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        style: BookTextStyle.formTexts,
        cursorColor: BookFanColors.burgundy,
        cursorWidth: screenWidth * 0.04,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: screenHeight * 0.04,
            // bottom: screenHeight * 0.04,
            left: screenWidth * 0.04,
          ),
          hintStyle: BookTextStyle.synopsisText,
          hintText: 'Email Address',
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _PasswordField extends StatefulWidget {
  const _PasswordField({Key? key}) : super(key: key);

  @override
  __PasswordFieldState createState() => __PasswordFieldState();
}

class __PasswordFieldState extends State<_PasswordField> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.07,
      child: TextFormField(
        obscureText: true,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        style: BookTextStyle.formTexts,
        cursorColor: BookFanColors.burgundy,
        cursorWidth: screenWidth * 0.04,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: screenHeight * 0.06,
            // bottom: screenHeight * 0.04,
            left: screenWidth * 0.04,
          ),
          hintStyle: BookTextStyle.synopsisText,
          hintText: 'Password',
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _ReconfirmedPassword extends StatefulWidget {
  const _ReconfirmedPassword({Key? key}) : super(key: key);

  @override
  __ReconfirmedPasswordState createState() => __ReconfirmedPasswordState();
}

class __ReconfirmedPasswordState extends State<_ReconfirmedPassword> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.07,
      child: TextFormField(
        obscureText: true,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        style: BookTextStyle.formTexts,
        cursorColor: BookFanColors.burgundy,
        cursorWidth: screenWidth * 0.04,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: screenHeight * 0.06,
            // bottom: screenHeight * 0.04,
            left: screenWidth * 0.04,
          ),
          hintStyle: BookTextStyle.synopsisText,
          hintText: 'Re-type Password',
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _CreateAccButton extends StatefulWidget {
  const _CreateAccButton({Key? key}) : super(key: key);

  @override
  __CreateAccButtonState createState() => __CreateAccButtonState();
}

class __CreateAccButtonState extends State<_CreateAccButton> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.08,
      width: screenWidth,
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NavScreens(),
            ),
          );
        },
        child: Text(
          'Create Account',
          style: BookTextStyle.buttonText,
        ),
        style: TextButton.styleFrom(
          backgroundColor: BookFanColors.burgundy,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

class _SocialMediaCircles extends StatefulWidget {
  const _SocialMediaCircles({Key? key}) : super(key: key);

  @override
  __SocialMediaCirclesState createState() => __SocialMediaCirclesState();
}

class __SocialMediaCirclesState extends State<_SocialMediaCircles> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 15.0,
            child: Image.network(
              'https://www.kindpng.com/picc/m/57-571745_facebook-logo-circle-email-signature-facebook-icon-small.png',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.04,
          ),
          CircleAvatar(
            maxRadius: 15.0,
            child: Image.network(
              'https://purepng.com/public/uploads/large/google-plus-circle-icon-eth.png',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
            backgroundColor: BookFanColors.white,
          ),
          SizedBox(
            width: screenWidth * 0.04,
          ),
          CircleAvatar(
            maxRadius: 15.0,
            child: Image.network(
              'https://cdn3.iconfinder.com/data/icons/popular-services-brands-vol-2/512/apple-512.png',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}

class _SignUpRow extends StatefulWidget {
  const _SignUpRow({Key? key}) : super(key: key);

  @override
  __SignUpRowState createState() => __SignUpRowState();
}

class __SignUpRowState extends State<_SignUpRow> {
  bool rememberCheck = false;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Not a Member?',
            style: BookTextStyle.authorNameText,
          ),
          SizedBox(
            width: screenWidth * 0.06,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Sign up',
              style: BookTextStyle.formTexts,
            ),
          ),
        ],
      ),
    );
  }
}
