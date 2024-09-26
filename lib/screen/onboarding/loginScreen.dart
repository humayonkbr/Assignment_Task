import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../api/apiClient.dart';
import '../../style/style.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  Map<String, String> FormValues = {"email": "", "password": ""};
  bool Loading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  InputOnChange(MapKey, Textvalue) {
    setState(() {
      FormValues.update(MapKey, (value) => Textvalue);
    });
  }

  FormOnSubmit({
    required String email,
    required String password,
  }) async {
    if (email.isEmpty) {
      ErrorToast('Email Required!');
    } else if (password.isEmpty) {
      ErrorToast('password Required!');
    } else {
      setState(() {
        Loading = true;
      });

      /*bool res = await LoginRequest(FormValues);

      if (res == true) {
        // Navigate To Dashboard Page
      } else {
        setState(() {
          Loading = false;
        });
      }*/

      Navigator.pushNamed(context, '/home');
    }
  }

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
                  "Get Started with",
                  style: Head1Text(colorDarkBlue),
                ),
                SizedBox(height: 8),
                Text(
                  "Learn with Humayon kabir",
                  style: Head1Text(colorLightGray),
                ),
                SizedBox(height: 20),

                TextFormField(
                  controller: emailController,
                  decoration: AppInputDecoration("Email Address"),
                ),
                SizedBox(height: 20),

                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: AppInputDecoration("Password"),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registration');
                  },
                  child: const Text('Create account'),
                ),

                // Login Button
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild("Login"),
                    onPressed: () {
                      FormOnSubmit(
                        email: emailController.value.text,
                        password: passwordController.value.text,
                      );
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
