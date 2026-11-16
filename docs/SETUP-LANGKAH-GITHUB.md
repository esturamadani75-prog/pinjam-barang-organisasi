# Panduan Mengisi Repo (Minggu 1)

File di folder ini adalah kerangka dasar. Folder `lib/` hanyalah kerangka kecil; proyek Flutter lengkap dibuat dengan `flutter create`.

## 1. Hammam: inisialisasi proyek Flutter
```bash
git clone https://github.com/esturamadani75-prog/pinjam-barang-organisasi.git
cd pinjam-barang-organisasi
git checkout -b chore/init-flutter
flutter create . --project-name orgloan --org id.ac.uns.orgloan
```
Salin `.gitignore`, `firestore.rules`, dan (opsional) isi `lib/models/` dari kerangka ini, lalu tambahkan di `pubspec.yaml`:
```yaml
dependencies:
  firebase_core: ^latest
  firebase_auth: ^latest
  cloud_firestore: ^latest
```
```bash
flutter pub get
git add .
git commit -m "chore: inisialisasi proyek Flutter"
git push -u origin chore/init-flutter    # lalu buka Pull Request ke main
```
Ganti `^latest` dengan versi terbaru dari `flutter pub add firebase_core firebase_auth cloud_firestore`.

## 2. Miko: konfigurasi Firebase dan skema
- Buat project Firebase, aktifkan Authentication (Email/Password) dan Cloud Firestore.
- Commit `docs/firestore-schema.md` dan `firestore.rules`:
  `git commit -m "docs: perancangan struktur database dan konfigurasi Firebase"`
- Jangan commit `google-services.json` / `firebase_options.dart`; bagikan lewat chat kelompok.

## 3. Estu: rancangan antarmuka anggota
- Taruh gambar rancangan (login, beranda, katalog, detail, form, riwayat) di `docs/design/`.
- `git commit -m "docs: rancangan antarmuka anggota"`

## 4. Ramdhoni: admin dan dokumentasi
- Taruh rancangan dashboard admin, kelola barang, kelola peminjaman di `docs/design/`.
- Rapikan `README.md` dan `docs/progress/minggu-1.md`.
- `git commit -m "docs: rancangan dashboard admin dan dokumentasi proyek"`

## 5. Bukti untuk SPADA
Ambil screenshot: halaman repo, struktur proyek Flutter, README, riwayat commit (tab Commits), dan Settings > Collaborators. Pastikan semua anggota sudah ditambahkan sebagai collaborator dan username Miko/Estu/Hammam/Ramdhoni terlihat.
