import 'package:flutter/material.dart';

class Noticia {
  final int? id;
  final String? titulo;
  final String? bajada;
  final String? image;

  Noticia({
    @required this.id,
    @required this.titulo,
    @required this.bajada,
    @required this.image,
  });
}

// demo places

List<Noticia> demoNoticias = [
  Noticia(
    id: 1,
    titulo:
        'Inician nuevo proyecto de integración social que beneficiará a 180 familias que podrán acceder a su vivienda propia',
    bajada:
        'Inician nuevo proyecto de integración social que beneficiará a 180 familias que podrán acceder a su vivienda propia',
    image: 'assets/noticia_test.jpg',
  ),
  Noticia(
    id: 2,
    titulo:
        'Inauguran proyecto “Altos del Valle” en Monte Patria que beneficia a 136 familias',
    bajada:
        'Con una inversión del MINVU de más de \$4.500 millones, se construyó un nuevo barrio que incorporó entre sus beneficiarios a 26 familias que vivían en situación de campamento.',
    image: 'assets/noticia_test.jpg',
  ),
  Noticia(
    id: 3,
    titulo:
        'Inauguran nuevo tramo de ciclovía en Avenida Francisco de Aguirre que une la ruta 5 y el Faro',
    bajada:
        'Se trata de un proyecto del MINVU, por \$762 millones para esta nueva infraestructura que forma parte de una red de ciclovías para la conurbación.',
    image: 'assets/noticia_test.jpg',
  ),
  Noticia(
    id: 4,
    titulo:
        'MINVU implementará Plan de Reactivación Económica y Social con un presupuesto histórico para la región',
    bajada:
        'Son más de \$164 mil millones los que se inyectarán a través de subsidios para clase media y sectores vulnerables, pavimentos participativos, construcción de parques urbanos y mejoramiento de espacios públicos, entre otros.',
    image: 'assets/noticia_test.jpg',
  ),
  Noticia(
    id: 5,
    titulo:
        'Inician nuevo proyecto de integración social que beneficiará a 180 familias que podrán acceder a su vivienda propia',
    bajada:
        'Inician nuevo proyecto de integración social que beneficiará a 180 familias que podrán acceder a su vivienda propia',
    image: 'assets/noticia_test.jpg',
  ),
  Noticia(
    id: 6,
    titulo:
        'Inauguran proyecto “Altos del Valle” en Monte Patria que beneficia a 136 familias',
    bajada:
        'Con una inversión del MINVU de más de \$4.500 millones, se construyó un nuevo barrio que incorporó entre sus beneficiarios a 26 familias que vivían en situación de campamento.',
    image: 'assets/noticia_test.jpg',
  ),
  Noticia(
    id: 7,
    titulo:
        'Inauguran nuevo tramo de ciclovía en Avenida Francisco de Aguirre que une la ruta 5 y el Faro',
    bajada:
        'Se trata de un proyecto del MINVU, por \$762 millones para esta nueva infraestructura que forma parte de una red de ciclovías para la conurbación.',
    image: 'assets/noticia_test.jpg',
  ),
  Noticia(
    id: 8,
    titulo:
        'MINVU implementará Plan de Reactivación Económica y Social con un presupuesto histórico para la región',
    bajada:
        'Son más de \$164 mil millones los que se inyectarán a través de subsidios para clase media y sectores vulnerables, pavimentos participativos, construcción de parques urbanos y mejoramiento de espacios públicos, entre otros.',
    image: 'assets/noticia_test.jpg',
  ),
];
