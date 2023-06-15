import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/img/bac.jpg'))),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('UNIVERS DataTv'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.social_distance_outlined),
            title: const Text('Réseaux sociaux'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.shape_line_rounded),
            title: const Text('Partenaires'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Informations légales'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Aide'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
