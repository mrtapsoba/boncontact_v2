import 'package:boncontact_v2/views/contact/network_public_page.dart';
import 'package:boncontact_v2/views/contact/on_phone_page.dart';
import 'package:flutter/material.dart';

class ScanUserPage extends StatefulWidget {
  const ScanUserPage({super.key});

  @override
  State<ScanUserPage> createState() => _ScanUserPageState();
}

class _ScanUserPageState extends State<ScanUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scanner un utilisateur"),
      ),
      body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(children: [
            const Text("Veuillez scanner le code QR de l'utilisateur"),
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.sizeOf(context).width - 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
            )),
            const Text("ou utiliser le numero de compte"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Ecrire le numero de l'utilisateur",
                        border: OutlineInputBorder(),
                      ),
                    )),
                FloatingActionButton(
                    onPressed: () {}, child: const Icon(Icons.search))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("ou rechercher ..."),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton.extended(
                    backgroundColor: Colors.blue,
                    elevation: 1,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const NetworkPublicPage();
                      }));
                    },
                    label: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Réseau publique",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                FloatingActionButton.extended(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    elevation: 1,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const OnePhonePage();
                      }));
                    },
                    label: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Sur le telephone",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ],
            ),
          ])),
    );
  }
}
