// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageView extends StatefulWidget {
  @override
  _LandingPageViewState createState() => _LandingPageViewState();
}

class _LandingPageViewState extends State<LandingPageView> {
  String qsomos =
      "En La Subasta El Corral, somos más que una empresa, somos una familia unida por la pasión y el compromiso. Cada uno de nuestros miembros contribuye al éxito colectivo, creando un ambiente de colaboración y apoyo mutuo. Nos enorgullece ser el único lugar donde cada cliente es atendido con la dedicación y el respeto que se merece, asegurando una experiencia excepcional en cada visita. Únete a nosotros y descubre la diferencia de ser parte de una verdadera comunidad, donde el éxito no es solo un objetivo, sino una realidad compartida";
  String contact =
      'Puedes contactarnos a través del correo electrónico contacto@subastaelcorral.com o llamarnos al +505 8584 8751 & +505 8222 4139. Estamos ubicados en Km 24 Panamericana Norte (Viniendo de Managua a Mano derecha).';
  String welcome = "BIENVENIDO A SUBASTA EL CORRAL ONLINE";

  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    // Esto hará que el texto de bienvenida aparezca suavemente
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner Section
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bgelcorral.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 20,
                    right: 20,
                    child: AnimatedOpacity(
                      opacity: isVisible ? 1.0 : 0.0,
                      duration: Duration(seconds: 1),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          welcome,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width > 600 ? 32 : 24, // Tamaño del texto responsive
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Acerca de Nosotros Section
            Container(
              padding: EdgeInsets.all(32.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acerca de Nosotros',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    qsomos,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            // Tecnologías Section
            Container(
              padding: EdgeInsets.all(32.0),
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nuestra Tecnología',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/png1.png',
                              width: 100, height: 100),
                          SizedBox(height: 8),
                          Text(
                            'Marketplace El corral S.A',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            '¡Donde comprar ganado nunca fue tan fácil!',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Acción al hacer clic en el botón
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 15),
                              backgroundColor: Colors.green, // Color de fondo
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    30), // Borde redondeado
                              ),
                              elevation: 8, // Sombra del botón
                              shadowColor: Colors.black
                                  .withOpacity(0.5), // Color de la sombra
                            ),
                            child: Text(
                              'Acceder al Market',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // Color del texto
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Contacto Section
            Container(
              padding: EdgeInsets.all(32.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contacto',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    contact,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            // Footer Section
            Container(
              padding: EdgeInsets.all(80.0),
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebook,
                            color: Colors.white),
                        onPressed: () async {
                          const url =
                              'https://www.facebook.com/SubastaGanaderaElCorral';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.tiktok,
                            color: Colors.white),
                        onPressed: () async {
                          const url =
                              'https://www.tiktok.com/@subasta.el.corral?_t=8pVAEAEwrag&_r=1';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '© 2024 Subasta El Corral S.A.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tipitapa, Managua',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Privacidad',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Accesibilidad',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Términos',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
