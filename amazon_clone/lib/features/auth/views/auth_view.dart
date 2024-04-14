import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/auth/services/auth_service.dart';
import 'package:flutter/material.dart';

enum Auth {
  Signin,
  Signup,
}

class AuthView extends StatefulWidget {
  static const String routeName = '/auth_view';

  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  Auth _auth = Auth.Signup;
  final _signupFormKey = GlobalKey<FormState>();
  final _signinFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
      name: _nameController.text,
    );
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            ListTile(
              tileColor: _auth == Auth.Signup
                  ? GlobalVariables.backgroundColor
                  : GlobalVariables.greyBackgroundColor,
              title: const Text(
                'Create Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.Signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == Auth.Signup)
              Container(
                padding: const EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                child: Form(
                  key: _signupFormKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: _nameController,
                        hintText: 'Enter Username',
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'Enter E-mail',
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        controller: _passwordController,
                        hintText: 'Enter Password',
                      ),
                      const SizedBox(height: 10),
                      CustomButton(
                        text: 'Sign-Up',
                        onTap: () {
                          if (_signupFormKey.currentState!.validate()) {
                            signUpUser();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ListTile(
              tileColor: _auth == Auth.Signin
                  ? GlobalVariables.backgroundColor
                  : GlobalVariables.greyBackgroundColor,
              title: const Text(
                'Sign-In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.Signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),
            if (_auth == Auth.Signin)
              Container(
                padding: const EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                child: Form(
                  key: _signinFormKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: _emailController,
                        hintText: 'Enter E-mail',
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        controller: _passwordController,
                        hintText: 'Enter Password',
                      ),
                      const SizedBox(height: 10),
                      CustomButton(
                        text: 'Sign-In',
                        onTap: () {
                          if (_signinFormKey.currentState!.validate()) {
                            signInUser();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      )),
    );
  }
}
