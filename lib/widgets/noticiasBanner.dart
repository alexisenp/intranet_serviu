import 'package:flutter/material.dart';
import 'package:intranet_serviu/widgets/noticia.dart';

class BuildNoticias extends StatelessWidget {
  const BuildNoticias({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Noticias'),
              TextButton(
                  onPressed: () => {},
                  child: Row(
                    children: [
                      Text('Ver todas'),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_right)
                    ],
                  ))
            ],
          ),
        ),
        Container(
          height: 250,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return BuildNoticia();
            },
          ),
        )
      ],
    );
  }
}
