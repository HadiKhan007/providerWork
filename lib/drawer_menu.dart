import 'package:flutter/material.dart';

const kTitle = 'Provider';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
            child: Center(
              child: Text(
                kTitle,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.displayMedium!.fontSize,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          getListTile('Home', onTap: () {
            Navigator.pushReplacementNamed(context, '/');
          }),
          getLine(),
          getListTile('About', onTap: () {
            Navigator.pushReplacementNamed(context, '/about');
          }),
          getLine(),
          getListTile('Settings', onTap: () {
            Navigator.pushReplacementNamed(context, '/settings');
          }),
          getLine(),
          getListTile('Log out', onTap: () {
            Navigator.pushReplacementNamed(context, '/logout');
          }),
        ],
      ),
    );
  }

  Widget getLine() {
    return SizedBox(
      height: 0.5,
      child: Container(
        color: Colors.grey,
      ),
    );
  }

  Widget getListTile(title, {onTap}) {
    return ListTile(title: Text(title), onTap: onTap);
  }
}
