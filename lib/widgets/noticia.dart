import 'package:flutter/material.dart';

class BuildNoticia extends StatelessWidget {
  const BuildNoticia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/noticia_test.jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Autoridades presentan diseño parque intercomunal',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Espacio público contará con equipamiento de alto estándar e integrará humedal que naturalmente se forma en el terreno.',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
