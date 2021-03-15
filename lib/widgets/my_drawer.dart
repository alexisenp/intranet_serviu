import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  size: 100.0,
                ),
                Text(
                  'Felipe Pizarro Alcayaga',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18.0),
                ),
                Text('correo@prueba.com')
              ],
            ),
          ),
          ListTile(
            onTap: () => {print('Tapeado')},
            leading: Icon(Icons.arrow_right),
            title: Text('Inicio'),
          ),
          ListTile(
            onTap: () => {print('Tapeado')},
            leading: Icon(Icons.arrow_right),
            title: Text('Sistemas'),
          ),
          ListTile(
            onTap: () => {print('Tapeado')},
            leading: Icon(Icons.arrow_right),
            title: Text('Tutoriales'),
          )
        ],
      ),
    );
  }
}
