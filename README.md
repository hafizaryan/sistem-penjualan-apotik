# Sistem Penjualan Apotik

Aplikasi penjualan apotek berbasis web yang dibangun dengan PHP native dan MySQL. Aplikasi ini melayani sisi pembeli (katalog obat dan pembelian) dan sisi pengelola (dashboard admin dan manager untuk mengelola data obat serta transaksi).

## Fitur

- Registrasi dan login pengguna dengan tiga level akses: pembeli (user), admin, dan manager
- Katalog obat (shop) dengan halaman detail produk dan pencarian
- Pembelian obat oleh pembeli, dengan pengurangan stok otomatis dan status transaksi "DIPROSES"
- Kelola data obat oleh admin: tambah, ubah (termasuk unggah foto obat), dan hapus
- Dashboard terpisah untuk admin, manager, dan user
- Halaman About dan Contact untuk sisi publik toko

## Teknologi

- PHP native dengan PDO (MySQL)
- MySQL / MariaDB (nama basis data: `sim_penjualan`)
- HTML, CSS, dan JavaScript
- Bootstrap dan Font Awesome untuk tampilan

## Struktur Proyek

```
sistem-penjualan-apotik/
├── backend/
│   ├── getConnection.php  # Fungsi koneksi PDO ke basis data
│   ├── function.php       # Fungsi registrasi, kelola obat, upload, beli, hapus
│   ├── hapus.php          # Proses hapus obat (khusus admin)
│   └── logout.php
├── frontend/
│   ├── login.php          # Halaman dan proses login
│   ├── signup.php         # Halaman registrasi
│   ├── shop.php           # Katalog obat
│   ├── shop-single.php    # Detail obat dan pembelian
│   ├── about.php
│   ├── contact.php
│   └── dashboard/         # Dashboard admin, manager, dan user
├── bootstrap/             # Berkas Bootstrap
├── fontawesome/           # Berkas Font Awesome
├── index.php              # Halaman utama (landing)
├── sim_penjualan.sql      # Dump struktur dan data basis data
└── ReadMe.txt             # Catatan nama basis data dan lokasi config
```

## Cara Menjalankan

Prasyarat: server lokal dengan PHP dan MySQL, misalnya XAMPP atau Laragon.

1. Clone repositori ini ke folder web server (misalnya `htdocs`).

2. Buat basis data bernama `sim_penjualan`, lalu impor berkas `sim_penjualan.sql` melalui phpMyAdmin atau perintah:

   ```bash
   mysql -u root -p sim_penjualan < sim_penjualan.sql
   ```

3. Sesuaikan koneksi basis data pada `backend/getConnection.php` (host, port, nama basis data, username, password). Konfigurasi bawaan memakai host `localhost`, port `3306`, dan user `root` tanpa password.

4. Jalankan server (di XAMPP cukup aktifkan Apache dan MySQL), lalu buka:

   ```
   http://localhost/sistem-penjualan-apotik/
   ```

5. Masuk melalui halaman `frontend/login.php` dengan akun yang dibuat dari halaman registrasi (`frontend/signup.php`), atau akun contoh yang tersedia di basis data hasil impor.

## Catatan Keamanan

Jangan pernah menyimpan kredensial akun asli di dalam repositori. Gunakan akun contoh yang jelas-jelas fiktif untuk keperluan dokumentasi dan pengujian.
