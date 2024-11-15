import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class AboutPage extends StatelessWidget {
  final HomeController controller;

  AboutPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildSectionHeader('Wisata Danau Gawir', Icons.nature),
          SizedBox(height: 16),
          _buildDescriptionContainer(
            'Danau Gawir di Legok adalah destinasi wisata alam yang terkenal di daerah Tangerang. Danau ini menawarkan pemandangan indah dengan suasana yang tenang, cocok untuk liburan keluarga atau sekadar melepas penat. Dengan area yang luas dan dikelilingi pepohonan rindang, Danau Gawir juga menyediakan fasilitas rekreasi seperti spot foto, area piknik, dan wahana perahu yang aman.',
          ),
          SizedBox(height: 20),
          _buildSectionHeader(
              'Aktivitas di Danau Gawir', Icons.directions_boat),
          SizedBox(height: 16),
          _buildActivityContainer('Bermain Perahu di Danau'),
          _buildActivityContainer('Berkemah di Area Tersedia'),
          _buildActivityContainer('Piknik dengan Keluarga'),
          _buildActivityContainer('Fotografi Pemandangan Alam'),
          SizedBox(height: 20),
          _buildSectionHeader('Fasilitas Tersedia', Icons.groups_rounded),
          SizedBox(height: 16),
          _buildFacilityContainer('Area Parkir Luas'),
          _buildFacilityContainer('Spot Foto Menarik'),
          _buildFacilityContainer('Toilet Bersih'),
          _buildFacilityContainer('Kantin dan Area Makan'),
          SizedBox(height: 20),
          _buildGallerySection(), // Memanggil fungsi gallery section
          SizedBox(height: 16),
        ],
      ),
      selectedIndex: 1,
      controller: controller,
    );
  }

  Widget _buildSectionHeader(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.black),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionContainer(String description) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green[800]!),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        description,
        style: TextStyle(fontSize: 14, color: Colors.black),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildActivityContainer(String activity) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green[800]!),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        activity,
        style: TextStyle(fontSize: 14, color: Colors.black),
      ),
    );
  }

  Widget _buildFacilityContainer(String facility) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green[800]!),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        facility,
        style: TextStyle(fontSize: 14, color: Colors.black),
      ),
    );
  }

  Widget _buildGallerySection() {
    return Column(
      children: [
        Text(
          'Galeri Wisata',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLogo('assets/images/danau1.png', 100),
            SizedBox(width: 16),
            _buildLogo('assets/images/danau2.png', 100),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLogo('assets/images/danau3.png', 100),
            SizedBox(width: 16),
            _buildLogo('assets/images/danau4.png', 100),
          ],
        ),
      ],
    );
  }

  Widget _buildLogo(String logoPath, double size) {
    return Container(
      width: size,
      height: size,
      child: Image.asset(
        logoPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
