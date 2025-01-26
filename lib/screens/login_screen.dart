// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/core/themes.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => __LoginScreensState();
}

class __LoginScreensState extends State<LoginScreen> {
  TextEditingController epostaYonetici = TextEditingController();
  TextEditingController sifreYonetici = TextEditingController();

  girisYap() {
    if (epostaYonetici.text.isEmpty || sifreYonetici.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Bilgilerinizi Giriniz"),
        //action: SnackBarAction(label: "Kapat", onPressed: () {}),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.red,
        showCloseIcon: true,
      ));
    } else {
      if (sifreYonetici.text.length < 8) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Sifre Minimum 8 Haneli Olabilir"),
          //action: SnackBarAction(label: "Kapat", onPressed: () {}),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          showCloseIcon: true,
        ));
      } else {
        context.go("/home");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: epostaYonetici,
                decoration: InputDecoration(
                  hintText: "E-Posta",
                  border: OutlineInputBorder(),
                ),
                //keyboardType: TextInputType.number,
                //inputFormatters: [
                //FilteringTextInputFormatter.digitsOnly,
                //],
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                controller: sifreYonetici,
                decoration: InputDecoration(
                  hintText: "Sifre",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: girisYap,
                child: const Text("Giris Yap"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  context.pushReplacement("/register");
                },
                child: const Text("Kaydol"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
