import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testfluter/Screens/Login/components/background.dart';
import 'package:testfluter/Screens/Signup/signup_screen.dart';
import 'package:testfluter/components/already_have_an_account_acheck.dart';
import 'package:testfluter/components/rounded_button.dart';
import 'package:testfluter/components/rounded_input_field.dart';
import 'package:testfluter/components/rounded_password_field.dart';
import 'package:testfluter/components/text_field_container.dart';
import 'package:testfluter/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.25,
            ),
            RoundedInputField(
              hintText: "Enter Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
