import 'package:flutter/material.dart';

class FeedDetailPage extends StatefulWidget {
  const FeedDetailPage({super.key});

  @override
  State<FeedDetailPage> createState() => _FeedDetailPageState();
}

class _FeedDetailPageState extends State<FeedDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Détail de la publication"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            ListTile(
              leading: const CircleAvatar(),
              title: const Text("User name"),
              trailing: FloatingActionButton.extended(
                  elevation: 1,
                  onPressed: () {},
                  label: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "Voir profil",
                    ),
                  )),
            ),
            Container(
              height: 300,
              margin: const EdgeInsets.all(5),
              color: Colors.white,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 75,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.check_circle, color: Colors.green)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.block, color: Colors.red)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share, color: Colors.blue)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.flag, color: Colors.orange))
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("X Oui"),
                Text("X Non"),
                Text("Partager"),
                Text("Envoyer"),
                Text("Signaler"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
