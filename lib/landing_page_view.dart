import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'landing_page_controller.dart';

class LandingPageView extends StatelessWidget {
  final LandingPageController controller = Get.put(LandingPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner Section
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/banner.jpg'), // Add your banner image here
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Bienvenido a Subasta El Corral',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                    'SUBASTA EL CORRAL S.A es una empresa dedicada a la subasta y comercialización de ganado de alta calidad. Nuestra misión es proporcionar un mercado transparente y eficiente para nuestros clientes.',
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
                    'Tecnologías',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/png2.png', width: 100, height: 100),
                          SizedBox(height: 8),
                          Text('Te lo llevo ya', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/png1.png', width: 100, height: 100),
                          SizedBox(height: 8),
                          Text('Marketplace ganadero', style: TextStyle(fontSize: 16)),
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
                    'Puedes contactarnos a través del correo electrónico contacto@subastaelcorral.com o llamarnos al (123) 456-7890. Estamos ubicados en Calle Falsa 123, Ciudad, País.',
                    style: TextStyle(fontSize: 16),
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
