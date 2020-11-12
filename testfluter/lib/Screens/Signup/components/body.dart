import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testfluter/Screens/Login/login_screen.dart';
import 'package:testfluter/Screens/Signup/components/background.dart';
import 'package:testfluter/Screens/Signup/components/or_divider.dart';
import 'package:testfluter/Screens/Signup/components/social_icon.dart';
import 'package:testfluter/components/already_have_an_account_acheck.dart';
import 'package:testfluter/components/rounded_button.dart';
import 'package:testfluter/components/rounded_input_field.dart';
import 'package:testfluter/components/rounded_password_field.dart';
import 'package:testfluter/constants.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                 SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                 SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

