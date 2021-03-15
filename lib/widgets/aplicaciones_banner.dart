import 'package:flutter/material.dart';
import 'package:intranet_serviu/widgets/aplicacion.dart';

class BuildAplicaciones extends StatelessWidget {
  const BuildAplicaciones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Mis aplicaciones'),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          height: 80,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 50,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return AppItem(nombre: 'App' + index.toString());
            },
          ),
        )
      ],
    );
  }
}
