import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:providerwork/drawer_menu.dart';
import 'package:provider/provider.dart';
import 'package:providerwork/model/ui.dart';

// ignore: must_be_immutable
class About extends StatelessWidget {
  String text = lorem(paragraphs: 3, words: 50);

  About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.teal,
      ),
      drawer: const DrawerMenu(),
      backgroundColor: Colors.amber,
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Consumer<UI>(
          builder: (context, ui, child) {
            return RichText(
              text: TextSpan(
                text: text,
                style:
                    TextStyle(fontSize: ui.fontSize, color: Colors.lightBlue),
              ),
            );
          },
        ),
      ),
    );
  }
}
