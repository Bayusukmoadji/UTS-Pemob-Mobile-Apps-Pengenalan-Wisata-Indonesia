import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class AlbumPage extends StatelessWidget {
  final HomeController controller;

  AlbumPage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: GridView.builder(
        padding: const EdgeInsets.all(4),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Jumlah kolom per baris
          crossAxisSpacing: 4, // Jarak antar kolom
          mainAxisSpacing: 4, // Jarak antar baris
        ),
        itemCount: 28, // Jumlah total gambar
        itemBuilder: (context, index) {
          // Daftar nama file gambar
          final imagePaths = [
            'assets/images/11.png',
            'assets/images/12.png',
            'assets/images/13.png',
            'assets/images/14.png',
            'assets/images/15.png',
            'assets/images/16.png',
            'assets/images/17.png',
            'assets/images/18.png',
            'assets/images/19.png',
            'assets/images/20.png',
            'assets/images/21.png',
            'assets/images/22.png',
            'assets/images/23.png',
            'assets/images/24.png',
            'assets/images/25.png',
            'assets/images/26.png',
            'assets/images/27.png',
            'assets/images/28.png',
            'assets/images/2.png',
            'assets/images/4.png',
            'assets/images/6.png',
            'assets/images/5.png',
            'assets/images/3.png',
            'assets/images/1.png',
            'assets/images/7.png',
            'assets/images/8.png',
            'assets/images/9.png',
            'assets/images/10.png',
          ];

          return Image.asset(
            imagePaths[index],
            fit: BoxFit.cover, // Menyusun gambar agar sesuai dalam grid
          );
        },
      ),
      selectedIndex: 3,
      controller: controller,
    );
  }
}
