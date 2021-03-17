import 'package:flutter/material.dart';
import 'package:intranet_serviu/widgets/noticia.dart';

class BuildNoticias extends StatelessWidget {
  const BuildNoticias({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                ),
              )
            ],
          ),
        ),
        BuildNoticia(),
      ],
    );
  }
}
