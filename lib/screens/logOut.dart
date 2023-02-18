// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:providerwork/drawer_menu.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        drawer: const DrawerMenu(),
        body: TextButton(
          child: const Text('Press'),
          onPressed: () {
            print('Hello');
          },
        ));
  }
}
