import 'package:flutter/material.dart';

class AuthorListScreen extends StatelessWidget {
  const AuthorListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authors'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.quotable.dev/profile/400/akhenaten.jpg"),
          ),
          title: Text('Akhenaten'),
          subtitle: Text('Akhenaten, known before the fifth year of his reign as Amenhotep IV, was an ancient Egyptian pharaoh of the 18th Dynasty, who ruled for 17 years and died perhaps in 1336 BC or 1334 BC.'),
        ),
        itemCount: 5,
      ),
    );
  }
}
