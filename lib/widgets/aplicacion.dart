import 'package:flutter/material.dart';

class AppItem extends StatelessWidget {
  const AppItem({
    Key? key,
    required this.nombre,
  }) : super(key: key);

  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            ),
            color: Colors.grey[300],
          ),
          padding: EdgeInsets.all(20.0),
          child: Icon(Icons.access_alarm, color: Colors.grey),
        ),
        Text(nombre)
      ],
    );
  }
}
