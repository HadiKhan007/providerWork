import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerwork/about.dart';
import 'package:providerwork/home.dart';
import 'package:providerwork/model/ui.dart';
import 'package:providerwork/screens/logOut.dart';
import 'package:providerwork/settings.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Work(),
  ));
}

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UI()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/settings': (context) => const Settings(),
          '/logout': (context) => const LogOut(),
        },
      ),
    );
  }
}
