Aplikasi Pengenalan Wisata Danau Gawir
Business Requirement Document (BRD)
1. Introduction

Proyek: Aplikasi Pengenalan Wisata Danau Gawir
Deskripsi:
Aplikasi ini bertujuan untuk mempromosikan wisata Danau Gawir di Legok melalui informasi yang informatif, navigasi peta interaktif, dan galeri gambar estetik. Aplikasi ini dibangun menggunakan Flutter dan mendukung platform Android saja dan chrome.
2. Objective

    Meningkatkan daya tarik wisatawan untuk mengunjungi Danau Gawir.
    Menyediakan navigasi lokasi yang mudah melalui peta interaktif.
    Menampilkan galeri foto estetik untuk menarik perhatian pengguna.
    Menyediakan antarmuka yang sederhana dan ramah pengguna.

3. Scope
Lingkup

Aplikasi akan memiliki fitur berikut:

    Home: Menampilkan logo dan ucapan selamat datang.
    About: Memberikan informasi tentang Danau Gawir (sejarah, aktivitas, fasilitas).
    Maps: Menampilkan lokasi Danau Gawir di peta interaktif dan menyediakan rute.
    Collections: Galeri gambar estetik tentang Danau Gawir.

Batasan

    Tidak mencakup fitur pembelian tiket atau reservasi.
    Peta hanya mendukung rute dengan flutter map.
    Informasi dan gambar diunggah secara manual oleh pengelola.

Kriteria Kesuksesan

    Aplikasi dapat diakses dengan lancar pada perangkat Android.
    Navigasi pengguna sederhana dan intuitif.
    Informasi dan galeri foto menarik perhatian pengguna.

4. Business Requirement
Business Requirement Definition

    Memperkenalkan Danau Gawir kepada wisatawan melalui informasi interaktif.
    Mempermudah wisatawan menemukan rute ke Danau Gawir.
    Memberikan daya tarik visual melalui galeri gambar.

Penjelasan Fungsi

    Home:
        Menampilkan logo dan ucapan selamat datang.

    About:
        Memberikan informasi tentang sejarah, aktivitas, dan fasilitas.

    Maps:
        Menampilkan peta lokasi Danau Gawir.
        Menyediakan rute navigasi.

    Collections:
        Menampilkan galeri gambar dengan resolusi tinggi.

Fungsional & Spesifikasi

    Integrasi dengan fluttermaps untuk navigasi.
    UI responsif dan mendukung berbagai ukuran layar.

5. Process Flow
Diagram Alur

1. Pengguna membuka aplikasi.
   -> Home: Menampilkan logo dan ucapan selamat datang.
   -> Menu navigasi:
      - Pilih "About": Informasi Danau Gawir.
      - Pilih "Maps": Lokasi dan rute menuju Danau Gawir.
      - Pilih "Collections": Galeri gambar Danau Gawir.
2. Pengguna menutup aplikasi.

6. Teknologi yang Digunakan

    Framework: Flutter
    Bahasa Pemrograman: Dart
    Database: Firebase
    API Peta: Google Maps API
    Platform: Android dan iOS

Cara Kontribusi

    Fork repositori ini.
    Clone repositori ke lokal:

git clone https://github.com/username/repository.git

Buat branch baru untuk fitur:

git checkout -b feature-name

Lakukan perubahan dan commit:

git commit -m "Add feature-name"

Push branch ke repositori Anda:

git push origin feature-name
