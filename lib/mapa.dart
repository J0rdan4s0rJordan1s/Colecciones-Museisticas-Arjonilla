import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';

class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  final MapController _mapController = MapController();
  Map<String, dynamic>? _selectedLocation;

  final List<Map<String, dynamic>> locations = [
    {
      "nombre": "Refugio Antiaéreo",
      "coordenadas": LatLng(37.973649366478675, -4.104493675145468),
      "imagen": "assets/images/refugio/refugio-localizaciones.png",
      "enlace": "https://teliportme.com/virtualtour/5f1f3688/2098835",
    },
    {
      "nombre": "Colecciones Museísticas",
      "coordenadas": LatLng(37.973689539326095, -4.104594258075407),
      "imagen": "assets/images/colecciones/colecciones-localizaciones.png",
      "enlace": "https://teliportme.com/virtualtour/5f1f3688/2098837",
    },
    {
      "nombre": "Castillo del trovador Macías",
      "coordenadas": LatLng(37.974078353314155, -4.104806545160636),
      "imagen": "assets/images/castillo/castillo-localizaciones.png",
      "enlace": "https://teliportme.com/virtualtour/5f1f3688/2099105",
    },
  ];

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print("El servicio de ubicación está desactivado.");
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print("Permisos de ubicación denegados.");
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      print("Los permisos de ubicación están denegados permanentemente.");
      return;
    }

    Position position = await Geolocator.getCurrentPosition();
    _mapController.move(LatLng(position.latitude, position.longitude), 17.0);
  }

  void _openMenu() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MenuPage(locations: locations),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ubicaciones", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: LatLng(37.97391, -4.10463),
              initialZoom: 20.0,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png",
                retinaMode: true,
              ),
              MarkerLayer(
                markers: locations.map((location) {
                  return Marker(
                    point: location["coordenadas"],
                    width: 30,
                    height: 30,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedLocation = location;
                        });
                      },
                      child: Icon(Icons.location_pin, color: Color(0xffd6a469), size: 30),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),

          // Ventanita de información
          if (_selectedLocation != null)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () async {
                  final String url = _selectedLocation!["enlace"];
                  final Uri uri = Uri.parse(url);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  } else {
                    throw 'No se pudo abrir $url';
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Color(0xff15181e),
                  child: Row(
                    children: [
                      Image.asset(
                        _selectedLocation!["imagen"],
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          _selectedLocation!["nombre"],
                          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          Positioned(
            bottom: 80,
            right: 20,
            child: FloatingActionButton(
              heroTag: "menu_button",
              onPressed: _openMenu,
              backgroundColor: Color(0xffd6a469),
              child: Icon(
                Icons.menu,
                color: Colors.black
              ),
            ),
          ),
          Positioned(
            bottom: 150,
            right: 20,
            child: FloatingActionButton(
              heroTag: "location_button",
              onPressed: _getCurrentLocation,
              backgroundColor: Colors.white,
              child: Icon(Icons.near_me_rounded, color: Color(0xffd6a469)),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<Map<String, dynamic>> locations;

  const MenuPage({required this.locations});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15181e),
      appBar: AppBar(
        title: Text("Ubicaciones", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Container(),
      ),
      body: ListView.separated(
        itemCount: locations.length,
        separatorBuilder: (context, index) => Divider(color: Colors.white54),
        itemBuilder: (context, index) {
          final location = locations[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              title: Text(
                location["nombre"],
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                trailing: Image.asset(
                  location["imagen"],
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                onTap: () async {
                  final Uri uri = Uri.parse(location["enlace"]);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                }
              ),
            );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        backgroundColor: Color(0xffd6a469),
        child: Icon(Icons.map_outlined, color: Colors.black),
      ),
    );
  }
}
