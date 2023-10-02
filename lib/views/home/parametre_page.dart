import 'package:flutter/material.dart';

class ParametrePage extends StatefulWidget {
  const ParametrePage({super.key});

  @override
  State<ParametrePage> createState() => _ParametrePageState();
}

class _ParametrePageState extends State<ParametrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Parametrage")),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                height: 200,
                width: MediaQuery.sizeOf(context).width - 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                child: ListTile(
                  title: Text("Contactez nous"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                  child: SwitchListTile(
                      title: const Text("Activer les notification"),
                      value: true,
                      onChanged: (onChanged) {
                        setState(() {});
                      })),
              const SizedBox(
                height: 10,
              ),
              const Card(
                child: ListTile(
                  title: Text("Demander a etre certifié"),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextButton(onPressed: () {}, child: const Text('Me deconnecter')),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Supprimer mon compte',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          )),
    );
  }
}
