import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/create_account.dart';
import 'package:flutter_application_1/main_page.dart';
import 'package:flutter_application_1/widgets/widgets.dart';
import 'package:gap/gap.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordToggle = false;
  final _formfieald = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? emailError = null;
  String? passwordError = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(40),
                const Text(
                  'Welcome back',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
                ),
                Gap(20),
                const Text(
                  "Let's Login to Connect your email",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                Form(
                    key: _formfieald,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter email';
                            } else if (!value.contains('@')) {
                              return 'Error email';
                            }
                            return null;
                          },
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            label: Text('Your email'),
                            errorText: emailError,
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email_outlined),
                          ),
                        ),
                        Gap(20),
                        TextFormField(
                          obscureText: passwordToggle ? false : true,
                          obscuringCharacter: '*',
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter confirm password';
                            } else if (value.length <= 7) {
                              return 'passwords characters length > 7';
                            }
                            return null;
                          },
                          controller: passwordController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            label: Text('Enter password'),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.key),
                            errorText: passwordError,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordToggle = !passwordToggle;
                                  });
                                },
                                icon: Icon(passwordToggle
                                    // ignore: dead_code
                                    ? Icons.remove_red_eye
                                    : CupertinoIcons.eye_slash)),
                          ),
                        ),
                      ],
                    )),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => CreateAccount())));
                        },
                        child: const Text(
                          'Sign up here',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                        )),
                  ],
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Elevatedbutton(
                      button_name: 'Log in',
                      onTap: () {
                        if (_formfieald.currentState!.validate()) {
                          print('object');
                          CheckEmailPassword checkEmailPassword =
                              CheckEmailPassword(
                                  getEmail: emailController.text,
                                  getPassword: passwordController.text);
                          print(checkEmailPassword.getEmail);
                          print(checkEmailPassword.getPassword);

                          if (checkEmailPassword.checkEmail() == true) {
                            emailError = null;
                            if (checkEmailPassword.checkPassword() == true) {
                              passwordError = null;
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => MainPage())));
                            } else {
                              passwordError = 'passwords are not the same';
                            }
                          } else {
                            emailError = 'Emails are not the same';
                          }
                        }
                        setState(() {});
                      }),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppleGoogle(link: 'images/apple.png', name: 'Apple'),
                      AppleGoogle(link: 'images/google.png', name: 'Google'),
                    ],
                  ),
                  Gap(20),
                  Text_Privacy()
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
