import 'package:flutter/material.dart';
import 'l10n/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'author.dart';

final authors = [
  Author(
      name: LocaleKeys.AkhenatenName.tr(),
      bio: LocaleKeys.AkhenatenBio.tr(),
      image: "https://images.quotable.dev/profile/400/akhenaten.jpg"),
  Author(
      name: LocaleKeys.AlbertName.tr(),
      bio: LocaleKeys.AlbertBio.tr(),
      image: "https://images.quotable.dev/profile/400/albert-schweitzer.jpg")
];

class AuthorListScreen extends StatelessWidget {
  const AuthorListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LocaleKeys.appTitle).tr(),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(authors[index].image),
          ),
          title: Text(authors[index].name),
          subtitle: Text(authors[index].bio),
        ),
        itemCount: authors.length,
      ),
    );
  }
}
