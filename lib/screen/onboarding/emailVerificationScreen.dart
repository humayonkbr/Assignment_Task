import 'package:flutter/material.dart';
import '../../style/style.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Email Address",
                  style: Head1Text(colorDarkBlue),
                ),
                const SizedBox(height: 8),
                Text(
                  "Learn with Humayon Kabir",
                  style: Head1Text(colorLightGray),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: AppInputDecoration("Email Address"),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: AppInputDecoration("Password"),
                ),
                const SizedBox(height: 20),
                // Login Button
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild("Next"),
                    onPressed: () {
                      // Button functionality
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

