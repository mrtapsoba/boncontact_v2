import 'package:boncontact_v2/views/feed/feed_detail_page.dart';
import 'package:boncontact_v2/views/feed/new_post_page.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: "Recherche dans publication...",
                  border: OutlineInputBorder(),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Card(
                          child: SizedBox(
                              child: Column(
                            children: [
                              ListTile(
                                leading: const CircleAvatar(),
                                title: const Text("User name"),
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.message)),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const FeedDetailPage();
                                    }));
                                  },
                                  child: Container(
                                    height: 300,
                                    margin: const EdgeInsets.all(5),
                                    color: Colors.white,
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.check_circle,
                                          color: Colors.green)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.block,
                                          color: Colors.red)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.share,
                                          color: Colors.blue)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.send)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.flag,
                                          color: Colors.orange))
                                ],
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("X Oui"),
                                  Text("X Non"),
                                  Text("Partager"),
                                  Text("Envoyer"),
                                  Text("Signaler"),
                                ],
                              )
                            ],
                          )),
                        );
                      }))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const NewPostPage();
                                    }));},
          label: const Text("Nouveau post"),
          icon: const Icon(Icons.add),
        ));
  }
}
