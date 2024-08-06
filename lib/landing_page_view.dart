import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:subasta_landing/constants.dart';
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
                    child: Container(
                      width: double.infinity,
                     // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        welcome,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
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
                    contact,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            // Footer Section
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                        onPressed: () {
                          Link("https://www.facebook.com/SubastaGanaderaElCorral");
                        },
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.youtube, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '© 2024 Subasta El Corral S.A.',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Tipitapa, Managua',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
