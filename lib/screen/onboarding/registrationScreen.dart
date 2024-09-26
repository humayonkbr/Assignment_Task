import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/style.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  "Join With Us",
                  style: Head1Text(colorDarkBlue),
                ),
                SizedBox(height: 8),
                Text(
                  "Learn with Humayon Kabir",
                  style: Head1Text(colorLightGray),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: TextFormField(
                    decoration: AppInputDecoration("First Name"),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: TextFormField(
                    obscureText: true,
                    decoration: AppInputDecoration("Last Name"),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: TextFormField(
                    decoration: AppInputDecoration("Mobile Number"),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: TextFormField(
                    obscureText: true,
                    decoration: AppInputDecoration("Password"),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: TextFormField(
                    decoration: AppInputDecoration("Confirm Password"),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text('Already have an account? login'),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild("Registration"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
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
