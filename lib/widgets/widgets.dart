import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Elevatedbutton extends StatelessWidget {
  final Function() onTap;
  String button_name;
  Elevatedbutton({required this.button_name, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    double ScreenW = MediaQuery.of(context).size.width;

    return ElevatedButton(
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(Size(ScreenW, 60)),
            backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 58, 33, 243)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
        onPressed: onTap,
        child: Text(
          button_name,
          style: const TextStyle(color: Colors.white),
        ));
  }
}

class Text_button extends StatelessWidget {
  final Function() text_button_onTap;
  late Color? kolor;
  String name;
  Text_button(this.kolor,
      {required this.text_button_onTap, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: text_button_onTap,
      child: Text(
        name,
        style:
            TextStyle(color: kolor, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class AppleGoogle extends StatelessWidget {
  String link;
  String name;
  AppleGoogle({required this.link, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 60,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
          onPressed: () {},
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(link))),
              ),
              Text(
                name,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
            ],
          )),
    );
    ;
  }
}

class Text_Privacy extends StatelessWidget {
  const Text_Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text(
            "By continuing, you agree to Loana's",
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
          Text(
            "Terms of Use & Pravicy Policy",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ],
      ),
    );
  }
}

class Password_container extends StatelessWidget {
  String? errorName;
  final String name;
  late String password;

  void check_password() {
    if (password.isNotEmpty && password.length >= 8) {
      errorName = null;
    }
  }

  Password_container(
    this.password, {
    required this.name,
    super.key,
    required this.errorName,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          errorText: errorName,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: name,
          hintStyle: TextStyle(color: Colors.black54),
          prefixIconColor: Colors.black54,
          prefixIcon: Icon(Icons.vpn_key_rounded),
          suffixIcon: IconButton(
              onPressed: () {}, icon: Icon(CupertinoIcons.eye_slash))),
    );
  }
}

class Email extends StatelessWidget {
  bool check_name_email;
  String? error_name;
  String name;
  Icon ikon;

  Email(
      {required this.check_name_email,
      required this.error_name,
      required this.name,
      required this.ikon,
      super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();

    return TextField(
      controller: emailController,
      decoration: InputDecoration(
          errorText: error_name,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: name,
          hintStyle: TextStyle(color: Colors.black54),
          prefixIconColor: Colors.black54,
          prefixIcon: ikon),
    );
  }
}
