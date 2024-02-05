import 'package:flutter/material.dart';
import 'package:news_app/feature/HomeScreen/HomeScreen.dart';
import 'package:news_app/feature/mainScreen.dart';
import 'package:news_app/feature/widget/text_field_password.dart';

import '../../Theme.dart';
import '../widget/text_field_email.dart';

class LoginAuthScreen extends StatefulWidget {
  const LoginAuthScreen({super.key});

  @override
  State<LoginAuthScreen> createState() => _LoginAuthScreenState();
}

class _LoginAuthScreenState extends State<LoginAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Back 👋',
                style: TextStyle(
                    fontSize: 24,
                    color: blackPrimary,
                    fontWeight: FontWeight.w600)),
            const SizedBox(
              height: 8,
            ),
            Text(
              'I am happy to see you again.',
              style: TextStyle(
                  color: greyPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      body: BodyLoginScreen(),
    );
  }
}

class BodyLoginScreen extends StatefulWidget {
  const BodyLoginScreen({super.key});

  @override
  State<BodyLoginScreen> createState() => _BodyLoginScreenState();
}

class _BodyLoginScreenState extends State<BodyLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        child: Column(
          children: [
            const CustomTextFieldEmail(),
            const SizedBox(
              height: 24,
            ),
            CustomTextFieldPassword(
              text: 'Password',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    style: TextButton.styleFrom(foregroundColor: purplePrimary),
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: greyPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: purplePrimary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                Navigator.push( context , MaterialPageRoute(builder: (context) => MainScreen()));

              },
              child: const SizedBox(
                height: 56,
                width: double.maxFinite,
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: blackLighter ),),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: blackPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
