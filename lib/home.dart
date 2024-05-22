import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool check = false;
  bool buttoncheck = true;
  String? ageError;
  int number = 0;

  void checkAge(String age) {
    print(check);
    print('object');
    if (age.isNotEmpty) {
      try {
        number = 100 - int.parse(age);
        check = true;
      } catch (e) {
        check = false;

        null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Gap(30),
            TextField(
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Enter age',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                errorText: ageError,
              ),
            ),
            Gap(20),
            check
                ? Text(number >= 100
                    ? 'siz 100 yoshdan kattasiz'
                    : '100 ga kirishingizga ${number} yosh qoldi')
                : Text(''),
            Gap(20),
            ElevatedButton(
                onPressed: () {
                  if (textController.text.isEmpty) {
                    ageError = "Siz hato malumot kiritdingiz !";
                    setState(() {});
                  } else {
                    ageError = null;
                    checkAge(textController.text);

                    setState(() {});
                  }
                },
                child: Text('Enter')),
          ],
        ),
      )),
    );
  }
}
