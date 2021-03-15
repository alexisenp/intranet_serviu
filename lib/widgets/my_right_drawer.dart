import 'package:flutter/material.dart';

class MyRightDrawer extends StatelessWidget {
  const MyRightDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Estandares MINVU'),
                    Icon(
                      Icons.pin_drop,
                    )
                  ],
                ),
                Text('Estandares, resoluciones, leyes, graficos, etc'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
