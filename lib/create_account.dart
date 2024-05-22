import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/widgets/widgets.dart';
import 'package:gap/gap.dart';

String? email;
String? password;

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool passwordToggle = false;
  bool ConfirmPasswordToggle = false;
  final _formfieald = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => Login()),
                      ),
                    );
                  },
                  icon: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 214, 214, 214)),
                    child: const Icon(
                      CupertinoIcons.back,
                      color: Colors.black,
                    ),
                  ),
                ),
                Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                      Gap(20),
                      const Text(
                        'Create your account for you schedule',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      Gap(30),
                      Form(
                          key: _formfieald,
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter name';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: const InputDecoration(
                                    label: Text('Your name'),
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.person)),
                              ),
                              Gap(20),
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
                                decoration: const InputDecoration(
                                  label: Text('Your email'),
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
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          passwordToggle = !passwordToggle;
                                        });
                                      },
                                      icon: Icon(passwordToggle
                                          ? Icons.remove_red_eye
                                          : CupertinoIcons.eye_slash)),
                                ),
                              ),
                              Gap(20),
                              TextFormField(
                                obscureText:
                                    ConfirmPasswordToggle ? false : true,
                                obscuringCharacter: '*',
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter confirm password';
                                  } else if (value != passwordController.text) {
                                    return 'passwords are not the same';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  label: Text('Confirm password'),
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.key),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          ConfirmPasswordToggle =
                                              !ConfirmPasswordToggle;
                                        });
                                      },
                                      icon: Icon(ConfirmPasswordToggle
                                          ? Icons.remove_red_eye
                                          : CupertinoIcons.eye_slash)),
                                ),
                              ),
                            ],
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("You have an account?"),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Sign in here',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Elevatedbutton(
                    button_name: 'Continue',
                    onTap: () {
                      setState(() {
                        if (_formfieald.currentState!.validate()) {
                          password = passwordController.text;
                          email = emailController.text;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => Login()));
                        }
                      });
                    },
                  ),
                  Gap(20),
                  Text_Privacy()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CheckEmailPassword {
  String getEmail;
  String getPassword;

  CheckEmailPassword({required this.getEmail, required this.getPassword});
  bool checkEmail() {
    if (getEmail == email) {
      print(getEmail);
      print(email);
      return true;
    }
    print(getEmail);
    print(email);
    return false;
  }

  bool checkPassword() {
    if (getPassword == password) {
      print(getPassword);
      print(password);
      return true;
    }
    print(getPassword);
    print(password);
    return false;
  }
}
