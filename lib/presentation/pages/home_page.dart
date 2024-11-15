import 'package:flutter/material.dart';
import 'base_page.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;

  HomePage(this.controller);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      bodyContent: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container untuk border oranye
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 29, 111, 32),
                  width: 25, // Lebar border oranye
                ),
                borderRadius: BorderRadius.circular(1000), // Sudut membulat
              ),
              padding: EdgeInsets.all(
                  5), // Menambahkan padding agar border biru tidak menyentuh border oranye
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                    width: 25, // Lebar border biru
                  ),
                  borderRadius: BorderRadius.circular(1000), // Sudut membulat
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      1000), // Agar sudut gambar juga membulat
                  child: Image.asset('assets/images/logo_legok.png'),
                ),
              ),
            ),
            SizedBox(height: 10), // Menambahkan jarak antara gambar dan teks
            Text(
              '- WELCOME TO APPLICATION WISATA LEGOK -',
              style: TextStyle(
                fontSize: 20, // Ukuran font
                fontWeight: FontWeight.bold, // Bold tapi tidak terlalu berat
                fontStyle: FontStyle.italic, // Membuat font menjadi miring
                color: Colors.black, // Mengubah warna teks menjadi putih
                fontFamily: 'Monttserat', // Menggunakan font keluarga cursive
              ),
            ), // Konten spesifik halaman beranda
          ],
        ),
      ),
      selectedIndex: 0, // Home tab is selected
      controller: controller,
    );
  }
}
