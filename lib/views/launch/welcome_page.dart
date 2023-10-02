import 'package:boncontact_v2/views/launch/auth_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.all(50),
            child: Column(children: [
              const Center(
                  child: Text("Bienvenue sur\nle Bon Contact",
                      style: TextStyle(
                          fontSize: 20))),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                height: 400,
                width: MediaQuery.sizeOf(context).width - 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 20,
              ),
              FloatingActionButton.extended(
                  elevation: 1,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const AuthPhonePage();
                    }));
                  },
                  label: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.sizeOf(context).width - 100,
                    child: const Text("Commencer",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  )),
              const Expanded(
                  child: Center(
                child: Text('@intellectus_bf'),
              ))
            ])));
  }
}
