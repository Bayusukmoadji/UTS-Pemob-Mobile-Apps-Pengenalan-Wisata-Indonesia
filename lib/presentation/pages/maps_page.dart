import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class MapsPage extends StatelessWidget {
  final HomeController controller;

  MapsPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(-6.2738000, 106.5879674),
          initialZoom: 16.2,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                width: 45.0,
                height: 45.0,
                point: LatLng(-6.2738000, 106.5879674),
                child: IconButton(
                  icon: const Icon(Icons.location_on),
                  color: const Color.fromARGB(255, 35, 112, 33),
                  iconSize: 45.0,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Rute Untuk KeGawir"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Klik"),
                              Text("Tombol Dibawah Ini"),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(
                                      'https://maps.app.goo.gl/w78fBS4ppiWRU5Aj9'));
                                },
                                child: Text("Buka di Google Maps"),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Tutup"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          RichAttributionWidget(
            attributions: [
              TextSourceAttribution(
                'KLIK UNTUK RUTE',
                onTap: () => launchUrl(
                    Uri.parse('https://maps.app.goo.gl/w78fBS4ppiWRU5Aj9')),
              ),
            ],
          ),
        ],
      ),
      selectedIndex: 2, // Menyesuaikan index halaman pada navigasi
      controller: controller,
    );
  }
}
