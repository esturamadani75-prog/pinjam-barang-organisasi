# ORGLOAN

Aplikasi mobile berbasis **Flutter** untuk pengelolaan peminjaman barang/inventaris
**Himpunan Mahasiswa Program Studi Pendidikan Informatika**.

> Final Project Pengembangan Aplikasi Mobile Flutter: menyelesaikan permasalahan nyata di lingkungan kampus.

## Deskripsi

Pencatatan peminjaman inventaris organisasi (proyektor, speaker, kabel, kamera, dll.) yang masih manual
(buku/pesan pribadi) membuat data tidak terorganisasi, stok sulit dipantau, pengembalian sulit dilacak,
dan riwayat transaksi sulit ditelusuri. ORGLOAN memusatkan semuanya dalam satu aplikasi dengan
**Firebase Authentication** dan **Cloud Firestore**.

## Fitur Utama

**Anggota**
- Registrasi dan login (Firebase Authentication)
- Katalog inventaris beserta jumlah dan kondisi barang
- Detail barang
- Pengajuan peminjaman (jumlah, tanggal pinjam, tanggal kembali, keperluan)
- Pemantauan status pengajuan: `pending`, `approved`, `rejected`, `returned`
- Riwayat peminjaman pribadi

**Admin / Pengurus**
- Login dengan hak akses admin
- Dashboard ringkasan inventaris dan aktivitas peminjaman
- Kelola inventaris (tambah, ubah, hapus barang)
- Melihat seluruh pengajuan, menyetujui atau menolak
- Konfirmasi pengembalian barang (stok otomatis bertambah)
- Riwayat seluruh peminjaman dan pengembalian

## Teknologi

| Komponen | Teknologi |
|---|---|
| Framework | Flutter (Dart) |
| Autentikasi | Firebase Authentication |
| Database | Firebase Cloud Firestore |
| Desain UI | Canva / Figma |
| Kolaborasi | GitHub + SPADA |

## Anggota Kelompok

| No | Nama | GitHub | Peran |
|---|---|---|---|
| 1 | Miko | [@lumienmiko](https://github.com/lumienmiko) | Project Manager & Backend Lead |
| 2 | Estu | [@esturamadani75-prog](https://github.com/esturamadani75-prog) | UI/UX & Member Interface Lead |
| 3 | Hammam | [@hammamhehe](https://github.com/hammamhehe) | Borrowing Feature Lead |
| 4 | Ramdhoni | [@Ramdhani23](https://github.com/Ramdhani23) | Admin & Documentation Lead |

## Cara Menjalankan

Prasyarat: Flutter SDK (stable), Android Studio / VS Code, akun Firebase.

```bash
git clone https://github.com/esturamadani75-prog/pinjam-barang-organisasi.git
cd pinjam-barang-organisasi
flutter pub get
flutterfire configure      # hubungkan ke project Firebase kelompok
flutter run
```

> `google-services.json`, `GoogleService-Info.plist`, dan `firebase_options.dart` **tidak** diunggah ke repo
> (lihat `.gitignore`). Minta file konfigurasi ke Project Manager.

## Penggunaan Firestore

Tiga koleksi: `users`, `items`, `borrowings`. Detail skema ada di [docs/firestore-schema.md](docs/firestore-schema.md).
Aturan keamanan awal ada di [firestore.rules](firestore.rules).

## Dokumentasi

- [Fitur & alur](docs/fitur.md)
- [Skema Firestore](docs/firestore-schema.md)
- [Pembagian tugas & konvensi commit](docs/pembagian-tugas.md)
- [Laporan progres Minggu 1](docs/progress/minggu-1.md)

## Screenshot

Rancangan antarmuka disimpan di `docs/design/` (login, beranda, katalog, detail, form, riwayat, dashboard admin,
kelola barang, kelola peminjaman). Screenshot aplikasi akan ditambahkan di `docs/screenshots/` mulai Minggu 2.

## Status

- [x] Minggu 1: identifikasi masalah, perancangan, inisialisasi repo
- [ ] Minggu 2: implementasi antarmuka dan integrasi Firestore
- [ ] Minggu 3: penyelesaian fitur dan pengujian
- [ ] Minggu 4: finalisasi dan presentasi
