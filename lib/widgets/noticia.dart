import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intranet_serviu/models/noticia.dart';

class BuildNoticia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) => {},
              controller: PageController(
                viewportFraction: kIsWeb ? 0.5 : 0.8,
                initialPage: 1,
              ),
              itemCount: demoNoticias.length,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(right: 30),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      demoNoticias[index].image.toString(),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 80,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            demoNoticias[index].titulo.toString(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/*
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
*/
