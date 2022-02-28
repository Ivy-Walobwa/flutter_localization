import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'authors_list_screen.dart';
import 'l10n/l10.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: L10n.all,
    path: 'assets/l10n',
    fallbackLocale: L10n.all[0],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates:context.localizationDelegates ,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: AuthorListScreen(),
    );
  }
}
