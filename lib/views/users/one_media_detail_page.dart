import 'package:flutter/material.dart';

class OneMediaDetailPage extends StatefulWidget {
  const OneMediaDetailPage({super.key});

  @override
  State<OneMediaDetailPage> createState() => _OneMediaDetailPageState();
}

class _OneMediaDetailPageState extends State<OneMediaDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Social média détail")),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            ),
            const Text(
              "Media name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return const Card(
                        child: ListTile(
                          leading: CircleAvatar(),
                          title: Text("+226 xxxxxxxx"),
                          trailing: Icon(Icons.visibility),
                        ),
                      );
                    })),
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.link),
                hintText: "pseudo ou lien",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "petit commentaire",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
