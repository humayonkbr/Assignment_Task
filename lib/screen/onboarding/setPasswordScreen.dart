import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/style.dart';

class setPasswordScreen extends StatefulWidget {
  const setPasswordScreen({super.key});

  @override
  State<setPasswordScreen> createState() => _setPasswordScreenState();
}

class _setPasswordScreenState extends State<setPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          ScreenBackground(context),


          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Set password",
                  style: Head1Text(colorDarkBlue),
                ),
                SizedBox(height: 8),
                Text(
                  "Minimum  length password 6 character later and number numbination ",
                  style: Head1Text(colorLightGray),
                ),
                SizedBox(height: 20),


                TextFormField(
                  decoration: AppInputDecoration("Password"),
                ),
                SizedBox(height: 20),


                TextFormField(
                  obscureText: true,
                  decoration: AppInputDecoration("Confirm Password"),
                ),
                SizedBox(height: 20),

                // Login Button
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild("Confirm"),
                    onPressed: () {
                      // Login button functionality
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

