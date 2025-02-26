import 'package:flutter/material.dart';
import 'package:flutter_application_2/castillo.dart';
import 'package:flutter_application_2/colecciones.dart';
import 'package:flutter_application_2/principal.dart';
import 'package:flutter_application_2/refugio.dart';
import 'package:flutter_application_2/webview.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_2/mapa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tabs(),
    );
  }
}

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;

  // Imágenes iniciales
  String imgBunker = 'assets/images/bunker.svg';
  String imgCastillo = 'assets/images/castillo.svg';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      // Cambiar las imágenes cuando se seleccionan
      imgBunker = (index == 3) ? 'assets/images/bunker-selec.svg' : 'assets/images/bunker.svg';
      imgCastillo = (index == 4) ? 'assets/images/castillo-selec.svg' : 'assets/images/castillo.svg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getScreen(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        selectedItemColor: const Color(0xffd6a469),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed, // Evita que los iconos se oculten en 5+ elementos
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Principal"),
          const BottomNavigationBarItem(icon: Icon(Icons.location_on_rounded), label: "Ubicaciones"),
          const BottomNavigationBarItem(icon: Icon(Icons.image_rounded), label: "Colecciones"),
          BottomNavigationBarItem(icon: SvgPicture.asset(imgBunker, width: 30, height: 30), label: "Refugio"),
          BottomNavigationBarItem(icon: SvgPicture.asset(imgCastillo, width: 30, height: 30), label: "Castillo"),
          const BottomNavigationBarItem(icon: Icon(Icons.panorama_photosphere_rounded), label: "360"),
        ],
      ),
    );
  }

  // Función que devuelve la pantalla según la pestaña seleccionada
  Widget _getScreen(int index) {
    switch (index) {
      case 0:
        return const Principal();
      case 1:
        return Mapa();
      case 2:
        return Colecciones();
      case 3:
        return Refugio();
      case 4:
        return Castillo();
      case 5:
        return WebViewPage(url: "https://360.amuraone.com/virtualtour/5f1f3688");
      default:
      return const Center();
    }
  }
}