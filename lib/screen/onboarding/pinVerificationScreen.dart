import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../style/style.dart';

class pinVerificationScreen extends StatefulWidget {
  const pinVerificationScreen({super.key});

  @override
  State<pinVerificationScreen> createState() => _pinVerificationScreenState();
}

class _pinVerificationScreenState extends State<pinVerificationScreen> {
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
                Text("PIN Verification", style: Head1Text(colorDarkBlue)),
                SizedBox(height: 10),
                Text("A 6 digit pin has been sent to your mobile number",
                    style: Head6Text(colorLightGray)),
                SizedBox(height: 20),
                PinCodeTextField(
                  appContext: context,
                  length:6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {

                  },
                  onChanged: (value) {

                  },
                 ),
                Container(
                      child: ElevatedButton(
                        style: AppButtonStyle(),
                        child: SuccessButtonChild('Verify'),
                        onPressed: () {

                        }
                ),)
              ],

            ),
          ),
        ],
      ),
    );

  }
}
