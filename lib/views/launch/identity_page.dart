import 'package:boncontact_v2/views/home/base_page.dart';
import 'package:flutter/material.dart';

class IdentityPage extends StatefulWidget {
  const IdentityPage({super.key});

  @override
  State<IdentityPage> createState() => _IdentityPageState();
}

class _IdentityPageState extends State<IdentityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Identification"),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 100,
                width: MediaQuery.sizeOf(context).width - 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                radius: 50,
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.add_a_photo)),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Nom & Prénom(s)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                maxLines: 3,
                decoration: const InputDecoration(
                  hintText: "Biographie ou Description (facultatif)",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FloatingActionButton.extended(
                  elevation: 1,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const BasePage();
                    }));
                  },
                  label: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.sizeOf(context).width - 100,
                    child: const Text("Enregistrer",
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
