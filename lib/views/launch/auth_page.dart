import 'package:boncontact_v2/views/launch/identity_page.dart';
import 'package:flutter/material.dart';

class AuthPhonePage extends StatefulWidget {
  const AuthPhonePage({super.key});

  @override
  State<AuthPhonePage> createState() => _AuthPhonePageState();
}

class _AuthPhonePageState extends State<AuthPhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Authentification"),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 50),
                height: 200,
                width: MediaQuery.sizeOf(context).width - 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    hintText: "Numéro de telephone",
                    border: OutlineInputBorder(),
                    prefix: Text("BF +226")),
              ),
              const SizedBox(
                height: 20,
              ),
              FloatingActionButton.extended(
                  elevation: 1,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Confirmation"),
                              content: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                      hintText: "Entrer le code recu par sms",
                                      border: OutlineInputBorder())),
                              actions: [
                                TextButton(
                                  child: const Text("Retour"),
                                  onPressed: () {},
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return const IdentityPage();
                                      }));
                                    },
                                    child: const Text("Valider"))
                              ],
                            ));
                  },
                  label: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.sizeOf(context).width - 100,
                    child: const Text("M'envoyer le code par SMS",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  )),
              const Expanded(
                  child: Center(
                child: Text('Bon Contact'),
              ))
            ])));
  }
}
